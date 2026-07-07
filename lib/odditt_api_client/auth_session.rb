# frozen_string_literal: true

require 'time'

module OddittApiClient
  # Convenience authentication layer over the generated client.
  #
  # The Odditt API accepts two credential types, both exchanged for a short-lived
  # Bearer JWT at a login endpoint:
  #
  #   * an API key            -> POST /v1/auth/login  (sends the X-API-Key header)
  #   * client_id + secret    -> POST /v1/oauth/login (sends {client_id, client_secret})
  #
  # Data endpoints (e.g. /v1/trends/*, /v1/affiliates/*) accept the API key
  # directly via the X-API-Key header, so no login is needed for them. The
  # account-management endpoints (/v1/account/*) require the Bearer token.
  #
  # AuthSession wires this up: it configures the generated client with the
  # X-API-Key header (for an API-key credential) and installs an
  # +access_token_getter+ that lazily logs in and transparently refreshes the
  # Bearer token before it expires — so callers never handle tokens by hand.
  #
  #   client = OddittApiClient::AuthSession.from_api_key('my-api-key').api_client
  #   trends = OddittApiClient::TrendsApi.new(client)   # uses X-API-Key
  #   account = OddittApiClient::AccountApi.new(client)  # uses auto-refreshed Bearer
  #
  #   client = OddittApiClient::AuthSession.from_client_credentials(
  #     client_id: 'id', client_secret: 'secret'
  #   ).api_client
  class AuthSession
    # Build a session from an API key. Sends X-API-Key on data endpoints and
    # auto-logs-in for Bearer-only endpoints.
    def self.from_api_key(api_key, host: nil)
      new(api_key: api_key, host: host)
    end

    # Build a session from OAuth client credentials. Uses the auto-refreshed
    # Bearer token for every call.
    def self.from_client_credentials(client_id:, client_secret:, host: nil)
      new(client_id: client_id, client_secret: client_secret, host: host)
    end

    # The generated ApiClient, configured for auth. Pass it to any *Api class.
    attr_reader :api_client

    # @param skew_seconds [Integer] refresh this many seconds before expiry.
    def initialize(api_key: nil, client_id: nil, client_secret: nil, host: nil, skew_seconds: 60)
      if api_key.nil? && (client_id.nil? || client_secret.nil?)
        raise ArgumentError, 'provide api_key: OR client_id: and client_secret:'
      end

      @api_key = api_key
      @client_id = client_id
      @client_secret = client_secret
      @skew_seconds = skew_seconds
      @token_pair = nil
      @expires_at = nil
      @mutex = Mutex.new

      config = Configuration.new
      config.host = host if host
      # API-key credential: send X-API-Key so data endpoints work without a login.
      config.api_key['ApiKeyAuth'] = api_key if api_key
      # Bearer for account (and, for OAuth clients, all) endpoints — obtained and
      # refreshed on demand.
      config.access_token_getter = -> { bearer_token }
      @api_client = ApiClient.new(config)

      # Separate, unauthenticated client for the public login/refresh endpoints
      # (avoids any chance of the getter recursing into itself).
      auth_config = Configuration.new
      auth_config.host = host if host
      @auth_api = AuthenticationApi.new(ApiClient.new(auth_config))
    end

    private

    # Returns a currently-valid Bearer access token, logging in or refreshing as
    # needed. Thread-safe.
    def bearer_token
      @mutex.synchronize do
        return @token_pair.access_token if @token_pair && !expired?

        @token_pair = (@token_pair && @token_pair.refresh_token ? refresh : login)
        @expires_at = compute_expiry(@token_pair)
        @token_pair.access_token
      end
    end

    def login
      if @api_key
        @auth_api.v1_auth_login_post(@api_key)
      else
        request = AuthOAuthLoginRequest.new(client_id: @client_id, client_secret: @client_secret)
        @auth_api.v1_oauth_login_post(request)
      end
    end

    def refresh
      request = AuthRefreshRequest.new(refresh_token: @token_pair.refresh_token)
      if @api_key
        @auth_api.v1_auth_refresh_post(request)
      else
        @auth_api.v1_oauth_refresh_post(request)
      end
    rescue ApiError
      # A rejected/expired refresh token falls back to a full login.
      login
    end

    def expired?
      @expires_at.nil? || Time.now >= (@expires_at - @skew_seconds)
    end

    # Prefer the absolute expires_at; fall back to now + expires_in; else 1h.
    def compute_expiry(token_pair)
      if token_pair.respond_to?(:expires_at) && token_pair.expires_at
        begin
          return Time.parse(token_pair.expires_at.to_s)
        rescue ArgumentError, TypeError
          # fall through to expires_in
        end
      end
      seconds = (token_pair.respond_to?(:expires_in) && token_pair.expires_in) || 3600
      Time.now + seconds.to_i
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

describe OddittApiClient::AuthSession do
  def token_pair(access:, refresh: 'refresh-token', in_secs: 3600)
    OddittApiClient::AuthTokenPair.new(
      access_token: access,
      refresh_token: refresh,
      expires_at: (Time.now + in_secs).iso8601,
      expires_in: in_secs,
      token_type: 'Bearer',
    )
  end

  describe '.from_api_key' do
    it 'sends X-API-Key on the client config' do
      session = described_class.from_api_key('my-key')
      expect(session.api_client.config.api_key['ApiKeyAuth']).to eq('my-key')
    end

    it 'logs in via /v1/auth/login and caches the bearer token' do
      expect_any_instance_of(OddittApiClient::AuthenticationApi)
        .to receive(:v1_auth_login_post).with('my-key').once.and_return(token_pair(access: 'tok1'))

      getter = described_class.from_api_key('my-key').api_client.config.access_token_getter
      expect(getter.call).to eq('tok1')
      expect(getter.call).to eq('tok1') # cached: no second login (enforced by `.once`)
    end

    it 'refreshes with the refresh token once the access token expires' do
      allow_any_instance_of(OddittApiClient::AuthenticationApi)
        .to receive(:v1_auth_login_post).and_return(token_pair(access: 'tok1', in_secs: -10))
      expect_any_instance_of(OddittApiClient::AuthenticationApi)
        .to receive(:v1_auth_refresh_post).once.and_return(token_pair(access: 'tok2', in_secs: 3600))

      getter = described_class.new(api_key: 'my-key', skew_seconds: 0).api_client.config.access_token_getter
      expect(getter.call).to eq('tok1') # initial login (already expired)
      expect(getter.call).to eq('tok2') # expired -> refresh
    end
  end

  describe '.from_client_credentials' do
    it 'logs in via /v1/oauth/login and does not set an API key' do
      expect_any_instance_of(OddittApiClient::AuthenticationApi)
        .to receive(:v1_oauth_login_post).once.and_return(token_pair(access: 'otok'))

      session = described_class.from_client_credentials(client_id: 'id', client_secret: 'secret')
      expect(session.api_client.config.api_key['ApiKeyAuth']).to be_nil
      expect(session.api_client.config.access_token_getter.call).to eq('otok')
    end
  end

  describe 'validation' do
    it 'requires an api key or full client credentials' do
      expect { described_class.new }.to raise_error(ArgumentError)
      expect { described_class.new(client_id: 'id') }.to raise_error(ArgumentError)
    end
  end
end

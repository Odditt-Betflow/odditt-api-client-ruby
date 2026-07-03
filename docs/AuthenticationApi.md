# OddittApiClient::AuthenticationApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_auth_login_post**](AuthenticationApi.md#v1_auth_login_post) | **POST** /v1/auth/login | Login with API key |
| [**v1_auth_refresh_post**](AuthenticationApi.md#v1_auth_refresh_post) | **POST** /v1/auth/refresh | Refresh tokens |
| [**v1_oauth_login_post**](AuthenticationApi.md#v1_oauth_login_post) | **POST** /v1/oauth/login | OAuth login (client credentials) |
| [**v1_oauth_refresh_post**](AuthenticationApi.md#v1_oauth_refresh_post) | **POST** /v1/oauth/refresh | OAuth refresh |


## v1_auth_login_post

> <AuthTokenPair> v1_auth_login_post(x_api_key)

Login with API key

### Examples

```ruby
require 'time'
require 'odditt_api_client'

api_instance = OddittApiClient::AuthenticationApi.new
x_api_key = 'x_api_key_example' # String | 

begin
  # Login with API key
  result = api_instance.v1_auth_login_post(x_api_key)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_auth_login_post: #{e}"
end
```

#### Using the v1_auth_login_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTokenPair>, Integer, Hash)> v1_auth_login_post_with_http_info(x_api_key)

```ruby
begin
  # Login with API key
  data, status_code, headers = api_instance.v1_auth_login_post_with_http_info(x_api_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTokenPair>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_auth_login_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_key** | **String** |  |  |

### Return type

[**AuthTokenPair**](AuthTokenPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_auth_refresh_post

> <AuthTokenPair> v1_auth_refresh_post(auth_refresh_request)

Refresh tokens

### Examples

```ruby
require 'time'
require 'odditt_api_client'

api_instance = OddittApiClient::AuthenticationApi.new
auth_refresh_request = OddittApiClient::AuthRefreshRequest.new({refresh_token: 'refresh_token_example'}) # AuthRefreshRequest | 

begin
  # Refresh tokens
  result = api_instance.v1_auth_refresh_post(auth_refresh_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_auth_refresh_post: #{e}"
end
```

#### Using the v1_auth_refresh_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTokenPair>, Integer, Hash)> v1_auth_refresh_post_with_http_info(auth_refresh_request)

```ruby
begin
  # Refresh tokens
  data, status_code, headers = api_instance.v1_auth_refresh_post_with_http_info(auth_refresh_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTokenPair>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_auth_refresh_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_refresh_request** | [**AuthRefreshRequest**](AuthRefreshRequest.md) |  |  |

### Return type

[**AuthTokenPair**](AuthTokenPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_oauth_login_post

> <AuthTokenPair> v1_oauth_login_post(auth_o_auth_login_request)

OAuth login (client credentials)

### Examples

```ruby
require 'time'
require 'odditt_api_client'

api_instance = OddittApiClient::AuthenticationApi.new
auth_o_auth_login_request = OddittApiClient::AuthOAuthLoginRequest.new({client_id: 'client_id_example', client_secret: 'client_secret_example'}) # AuthOAuthLoginRequest | 

begin
  # OAuth login (client credentials)
  result = api_instance.v1_oauth_login_post(auth_o_auth_login_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_oauth_login_post: #{e}"
end
```

#### Using the v1_oauth_login_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTokenPair>, Integer, Hash)> v1_oauth_login_post_with_http_info(auth_o_auth_login_request)

```ruby
begin
  # OAuth login (client credentials)
  data, status_code, headers = api_instance.v1_oauth_login_post_with_http_info(auth_o_auth_login_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTokenPair>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_oauth_login_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_o_auth_login_request** | [**AuthOAuthLoginRequest**](AuthOAuthLoginRequest.md) |  |  |

### Return type

[**AuthTokenPair**](AuthTokenPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_oauth_refresh_post

> <AuthTokenPair> v1_oauth_refresh_post(auth_refresh_request)

OAuth refresh

### Examples

```ruby
require 'time'
require 'odditt_api_client'

api_instance = OddittApiClient::AuthenticationApi.new
auth_refresh_request = OddittApiClient::AuthRefreshRequest.new({refresh_token: 'refresh_token_example'}) # AuthRefreshRequest | 

begin
  # OAuth refresh
  result = api_instance.v1_oauth_refresh_post(auth_refresh_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_oauth_refresh_post: #{e}"
end
```

#### Using the v1_oauth_refresh_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthTokenPair>, Integer, Hash)> v1_oauth_refresh_post_with_http_info(auth_refresh_request)

```ruby
begin
  # OAuth refresh
  data, status_code, headers = api_instance.v1_oauth_refresh_post_with_http_info(auth_refresh_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthTokenPair>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AuthenticationApi->v1_oauth_refresh_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_refresh_request** | [**AuthRefreshRequest**](AuthRefreshRequest.md) |  |  |

### Return type

[**AuthTokenPair**](AuthTokenPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


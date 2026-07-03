# OddittApiClient::AccountApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_account_api_keys_get**](AccountApi.md#v1_account_api_keys_get) | **GET** /v1/account/api-keys | List own API keys |
| [**v1_account_api_keys_key_code_delete**](AccountApi.md#v1_account_api_keys_key_code_delete) | **DELETE** /v1/account/api-keys/{key_code} | Deactivate an API key |
| [**v1_account_api_keys_post**](AccountApi.md#v1_account_api_keys_post) | **POST** /v1/account/api-keys | Create a new API key |
| [**v1_account_check_endpoint_delete**](AccountApi.md#v1_account_check_endpoint_delete) | **DELETE** /v1/account/check-endpoint | Delete the check endpoint |
| [**v1_account_check_endpoint_get**](AccountApi.md#v1_account_check_endpoint_get) | **GET** /v1/account/check-endpoint | Get the configured check endpoint |
| [**v1_account_check_endpoint_post**](AccountApi.md#v1_account_check_endpoint_post) | **POST** /v1/account/check-endpoint | Set the check endpoint (upsert) |
| [**v1_account_config_get**](AccountApi.md#v1_account_config_get) | **GET** /v1/account/config | Get own client configuration |
| [**v1_account_secret_post**](AccountApi.md#v1_account_secret_post) | **POST** /v1/account/secret | Create a new client secret |
| [**v1_account_secrets_get**](AccountApi.md#v1_account_secrets_get) | **GET** /v1/account/secrets | List own client secrets |
| [**v1_account_secrets_secret_code_delete**](AccountApi.md#v1_account_secrets_secret_code_delete) | **DELETE** /v1/account/secrets/{secret_code} | Delete a client secret |
| [**v1_account_usage_get**](AccountApi.md#v1_account_usage_get) | **GET** /v1/account/usage | Get own usage stats |


## v1_account_api_keys_get

> <AuthListAPIKeysResponse> v1_account_api_keys_get

List own API keys

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # List own API keys
  result = api_instance.v1_account_api_keys_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_get: #{e}"
end
```

#### Using the v1_account_api_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthListAPIKeysResponse>, Integer, Hash)> v1_account_api_keys_get_with_http_info

```ruby
begin
  # List own API keys
  data, status_code, headers = api_instance.v1_account_api_keys_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthListAPIKeysResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthListAPIKeysResponse**](AuthListAPIKeysResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_api_keys_key_code_delete

> v1_account_api_keys_key_code_delete(key_code)

Deactivate an API key

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new
key_code = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Deactivate an API key
  api_instance.v1_account_api_keys_key_code_delete(key_code)
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_key_code_delete: #{e}"
end
```

#### Using the v1_account_api_keys_key_code_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_account_api_keys_key_code_delete_with_http_info(key_code)

```ruby
begin
  # Deactivate an API key
  data, status_code, headers = api_instance.v1_account_api_keys_key_code_delete_with_http_info(key_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_key_code_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_code** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_api_keys_post

> <AuthCreateAPIKeyResponse> v1_account_api_keys_post(auth_create_api_key_request)

Create a new API key

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new
auth_create_api_key_request = OddittApiClient::AuthCreateAPIKeyRequest.new({name: 'name_example'}) # AuthCreateAPIKeyRequest | 

begin
  # Create a new API key
  result = api_instance.v1_account_api_keys_post(auth_create_api_key_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_post: #{e}"
end
```

#### Using the v1_account_api_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCreateAPIKeyResponse>, Integer, Hash)> v1_account_api_keys_post_with_http_info(auth_create_api_key_request)

```ruby
begin
  # Create a new API key
  data, status_code, headers = api_instance.v1_account_api_keys_post_with_http_info(auth_create_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCreateAPIKeyResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_api_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_create_api_key_request** | [**AuthCreateAPIKeyRequest**](AuthCreateAPIKeyRequest.md) |  |  |

### Return type

[**AuthCreateAPIKeyResponse**](AuthCreateAPIKeyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_check_endpoint_delete

> v1_account_check_endpoint_delete

Delete the check endpoint

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # Delete the check endpoint
  api_instance.v1_account_check_endpoint_delete
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_delete: #{e}"
end
```

#### Using the v1_account_check_endpoint_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_account_check_endpoint_delete_with_http_info

```ruby
begin
  # Delete the check endpoint
  data, status_code, headers = api_instance.v1_account_check_endpoint_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_check_endpoint_get

> <AuthCheckEndpointResponse> v1_account_check_endpoint_get

Get the configured check endpoint

Returns the URL, method and bearer token preview for the check endpoint used by flow quoting. The full bearer token is never returned.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # Get the configured check endpoint
  result = api_instance.v1_account_check_endpoint_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_get: #{e}"
end
```

#### Using the v1_account_check_endpoint_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCheckEndpointResponse>, Integer, Hash)> v1_account_check_endpoint_get_with_http_info

```ruby
begin
  # Get the configured check endpoint
  data, status_code, headers = api_instance.v1_account_check_endpoint_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCheckEndpointResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthCheckEndpointResponse**](AuthCheckEndpointResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_check_endpoint_post

> <AuthCheckEndpointResponse> v1_account_check_endpoint_post(auth_set_check_endpoint_request)

Set the check endpoint (upsert)

Stores or updates the URL, method and bearer token used to quote flows against the client's own service. A single configuration exists per client.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new
auth_set_check_endpoint_request = OddittApiClient::AuthSetCheckEndpointRequest.new({auth_token: 'auth_token_example', method: 'POST', url: 'url_example'}) # AuthSetCheckEndpointRequest | 

begin
  # Set the check endpoint (upsert)
  result = api_instance.v1_account_check_endpoint_post(auth_set_check_endpoint_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_post: #{e}"
end
```

#### Using the v1_account_check_endpoint_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCheckEndpointResponse>, Integer, Hash)> v1_account_check_endpoint_post_with_http_info(auth_set_check_endpoint_request)

```ruby
begin
  # Set the check endpoint (upsert)
  data, status_code, headers = api_instance.v1_account_check_endpoint_post_with_http_info(auth_set_check_endpoint_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCheckEndpointResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_check_endpoint_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_set_check_endpoint_request** | [**AuthSetCheckEndpointRequest**](AuthSetCheckEndpointRequest.md) |  |  |

### Return type

[**AuthCheckEndpointResponse**](AuthCheckEndpointResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_account_config_get

> v1_account_config_get

Get own client configuration

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # Get own client configuration
  api_instance.v1_account_config_get
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_config_get: #{e}"
end
```

#### Using the v1_account_config_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_account_config_get_with_http_info

```ruby
begin
  # Get own client configuration
  data, status_code, headers = api_instance.v1_account_config_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_config_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_secret_post

> <AuthCreateSecretResponse> v1_account_secret_post

Create a new client secret

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # Create a new client secret
  result = api_instance.v1_account_secret_post
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secret_post: #{e}"
end
```

#### Using the v1_account_secret_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthCreateSecretResponse>, Integer, Hash)> v1_account_secret_post_with_http_info

```ruby
begin
  # Create a new client secret
  data, status_code, headers = api_instance.v1_account_secret_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthCreateSecretResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secret_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthCreateSecretResponse**](AuthCreateSecretResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_secrets_get

> <AuthListSecretsResponse> v1_account_secrets_get

List own client secrets

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new

begin
  # List own client secrets
  result = api_instance.v1_account_secrets_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secrets_get: #{e}"
end
```

#### Using the v1_account_secrets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthListSecretsResponse>, Integer, Hash)> v1_account_secrets_get_with_http_info

```ruby
begin
  # List own client secrets
  data, status_code, headers = api_instance.v1_account_secrets_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthListSecretsResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secrets_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthListSecretsResponse**](AuthListSecretsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_secrets_secret_code_delete

> v1_account_secrets_secret_code_delete(secret_code)

Delete a client secret

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new
secret_code = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Delete a client secret
  api_instance.v1_account_secrets_secret_code_delete(secret_code)
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secrets_secret_code_delete: #{e}"
end
```

#### Using the v1_account_secrets_secret_code_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_account_secrets_secret_code_delete_with_http_info(secret_code)

```ruby
begin
  # Delete a client secret
  data, status_code, headers = api_instance.v1_account_secrets_secret_code_delete_with_http_info(secret_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_secrets_secret_code_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_code** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_account_usage_get

> v1_account_usage_get(opts)

Get own usage stats

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::AccountApi.new
opts = {
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Get own usage stats
  api_instance.v1_account_usage_get(opts)
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_usage_get: #{e}"
end
```

#### Using the v1_account_usage_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_account_usage_get_with_http_info(opts)

```ruby
begin
  # Get own usage stats
  data, status_code, headers = api_instance.v1_account_usage_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling AccountApi->v1_account_usage_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


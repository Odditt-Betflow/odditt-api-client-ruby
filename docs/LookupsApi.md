# OddittApiClient::LookupsApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_lookups_affiliate_networks_get**](LookupsApi.md#v1_affiliates_lookups_affiliate_networks_get) | **GET** /v1/affiliates/lookups/affiliate-networks | Affiliate networks |
| [**v1_affiliates_lookups_offer_categories_get**](LookupsApi.md#v1_affiliates_lookups_offer_categories_get) | **GET** /v1/affiliates/lookups/offer-categories | Offer categories |
| [**v1_affiliates_lookups_operator_jurisdictions_get**](LookupsApi.md#v1_affiliates_lookups_operator_jurisdictions_get) | **GET** /v1/affiliates/lookups/operator-jurisdictions | Operator jurisdictions |
| [**v1_affiliates_lookups_operators_get**](LookupsApi.md#v1_affiliates_lookups_operators_get) | **GET** /v1/affiliates/lookups/operators | Operators |


## v1_affiliates_lookups_affiliate_networks_get

> Object v1_affiliates_lookups_affiliate_networks_get

Affiliate networks

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LookupsApi.new

begin
  # Affiliate networks
  result = api_instance.v1_affiliates_lookups_affiliate_networks_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_affiliate_networks_get: #{e}"
end
```

#### Using the v1_affiliates_lookups_affiliate_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_lookups_affiliate_networks_get_with_http_info

```ruby
begin
  # Affiliate networks
  data, status_code, headers = api_instance.v1_affiliates_lookups_affiliate_networks_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_affiliate_networks_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_lookups_offer_categories_get

> Object v1_affiliates_lookups_offer_categories_get

Offer categories

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LookupsApi.new

begin
  # Offer categories
  result = api_instance.v1_affiliates_lookups_offer_categories_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_offer_categories_get: #{e}"
end
```

#### Using the v1_affiliates_lookups_offer_categories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_lookups_offer_categories_get_with_http_info

```ruby
begin
  # Offer categories
  data, status_code, headers = api_instance.v1_affiliates_lookups_offer_categories_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_offer_categories_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_lookups_operator_jurisdictions_get

> Object v1_affiliates_lookups_operator_jurisdictions_get(opts)

Operator jurisdictions

Where we believe an operator is live. Informational only — not an upload gate.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LookupsApi.new
opts = {
  operator_id: 789, # Integer | 
  country_code: 'country_code_example' # String | 
}

begin
  # Operator jurisdictions
  result = api_instance.v1_affiliates_lookups_operator_jurisdictions_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_operator_jurisdictions_get: #{e}"
end
```

#### Using the v1_affiliates_lookups_operator_jurisdictions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_lookups_operator_jurisdictions_get_with_http_info(opts)

```ruby
begin
  # Operator jurisdictions
  data, status_code, headers = api_instance.v1_affiliates_lookups_operator_jurisdictions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_operator_jurisdictions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator_id** | **Integer** |  | [optional] |
| **country_code** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_lookups_operators_get

> Object v1_affiliates_lookups_operators_get(opts)

Operators

Paginated list of operators, optionally filtered by a free-text search term.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LookupsApi.new
opts = {
  search: 'search_example', # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  # Operators
  result = api_instance.v1_affiliates_lookups_operators_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_operators_get: #{e}"
end
```

#### Using the v1_affiliates_lookups_operators_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_lookups_operators_get_with_http_info(opts)

```ruby
begin
  # Operators
  data, status_code, headers = api_instance.v1_affiliates_lookups_operators_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LookupsApi->v1_affiliates_lookups_operators_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


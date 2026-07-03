# OddittApiClient::OffersApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_deals_post**](OffersApi.md#v1_affiliates_deals_post) | **POST** /v1/affiliates/deals | Paginated client deals |
| [**v1_affiliates_offers_post**](OffersApi.md#v1_affiliates_offers_post) | **POST** /v1/affiliates/offers | Client offer cards for a geography |


## v1_affiliates_deals_post

> Object v1_affiliates_deals_post(opts)

Paginated client deals

Paginated client deals (carousel/featured/list), optionally enriched with operator reviews. Scoped to the authenticated client.

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

api_instance = OddittApiClient::OffersApi.new
opts = {
  v1_affiliates_deals_post_request: OddittApiClient::V1AffiliatesDealsPostRequest.new # V1AffiliatesDealsPostRequest | 
}

begin
  # Paginated client deals
  result = api_instance.v1_affiliates_deals_post(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling OffersApi->v1_affiliates_deals_post: #{e}"
end
```

#### Using the v1_affiliates_deals_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_deals_post_with_http_info(opts)

```ruby
begin
  # Paginated client deals
  data, status_code, headers = api_instance.v1_affiliates_deals_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling OffersApi->v1_affiliates_deals_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_deals_post_request** | [**V1AffiliatesDealsPostRequest**](V1AffiliatesDealsPostRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_affiliates_offers_post

> Object v1_affiliates_offers_post(opts)

Client offer cards for a geography

Returns the calling client's best operator offer card per operator for a geography. The core offers read the widget cart renders.

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

api_instance = OddittApiClient::OffersApi.new
opts = {
  v1_affiliates_offers_post_request: OddittApiClient::V1AffiliatesOffersPostRequest.new # V1AffiliatesOffersPostRequest | 
}

begin
  # Client offer cards for a geography
  result = api_instance.v1_affiliates_offers_post(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling OffersApi->v1_affiliates_offers_post: #{e}"
end
```

#### Using the v1_affiliates_offers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_offers_post_with_http_info(opts)

```ruby
begin
  # Client offer cards for a geography
  data, status_code, headers = api_instance.v1_affiliates_offers_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling OffersApi->v1_affiliates_offers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_offers_post_request** | [**V1AffiliatesOffersPostRequest**](V1AffiliatesOffersPostRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


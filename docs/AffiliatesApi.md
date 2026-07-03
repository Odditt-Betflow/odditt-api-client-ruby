# OddittApiClient::AffiliatesApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_event_position_post**](AffiliatesApi.md#v1_affiliates_event_position_post) | **POST** /v1/affiliates/event-position | Single-bet cart for affiliate mode |
| [**v1_affiliates_parlay_post**](AffiliatesApi.md#v1_affiliates_parlay_post) | **POST** /v1/affiliates/parlay | Parlay cart for affiliate mode |


## v1_affiliates_event_position_post

> Object v1_affiliates_event_position_post(v1_affiliates_event_position_post_request)

Single-bet cart for affiliate mode

Returns live odds across operators for a single event betting market position, overlaid with the calling client's best affiliate offer per operator. Powers the widget's \"Bet Now\" cart for a single selection. Results are scoped to the authenticated client; operators can be gated with operator_ids / operator_keys.

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

api_instance = OddittApiClient::AffiliatesApi.new
v1_affiliates_event_position_post_request = OddittApiClient::V1AffiliatesEventPositionPostRequest.new({event_betting_market_position_id: 3.56}) # V1AffiliatesEventPositionPostRequest | 

begin
  # Single-bet cart for affiliate mode
  result = api_instance.v1_affiliates_event_position_post(v1_affiliates_event_position_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AffiliatesApi->v1_affiliates_event_position_post: #{e}"
end
```

#### Using the v1_affiliates_event_position_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_event_position_post_with_http_info(v1_affiliates_event_position_post_request)

```ruby
begin
  # Single-bet cart for affiliate mode
  data, status_code, headers = api_instance.v1_affiliates_event_position_post_with_http_info(v1_affiliates_event_position_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling AffiliatesApi->v1_affiliates_event_position_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_event_position_post_request** | [**V1AffiliatesEventPositionPostRequest**](V1AffiliatesEventPositionPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_affiliates_parlay_post

> Object v1_affiliates_parlay_post(v1_affiliates_parlay_post_request)

Parlay cart for affiliate mode

Returns combined parlay odds per operator, the per-leg single bets, and the calling client's best affiliate offer per operator, with combo deeplinks generated per operator. Powers the widget's \"Bet Now\" cart for a multi-leg bet. Results are scoped to the authenticated client; operators can be gated with operator_ids / operator_keys.

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

api_instance = OddittApiClient::AffiliatesApi.new
v1_affiliates_parlay_post_request = OddittApiClient::V1AffiliatesParlayPostRequest.new({event_betting_market_position_ids: [3.56]}) # V1AffiliatesParlayPostRequest | 

begin
  # Parlay cart for affiliate mode
  result = api_instance.v1_affiliates_parlay_post(v1_affiliates_parlay_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling AffiliatesApi->v1_affiliates_parlay_post: #{e}"
end
```

#### Using the v1_affiliates_parlay_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_parlay_post_with_http_info(v1_affiliates_parlay_post_request)

```ruby
begin
  # Parlay cart for affiliate mode
  data, status_code, headers = api_instance.v1_affiliates_parlay_post_with_http_info(v1_affiliates_parlay_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling AffiliatesApi->v1_affiliates_parlay_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_parlay_post_request** | [**V1AffiliatesParlayPostRequest**](V1AffiliatesParlayPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


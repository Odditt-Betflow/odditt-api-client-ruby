# OddittApiClient::OddsApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_odds_upcoming_odds_by_event_post**](OddsApi.md#v1_odds_upcoming_odds_by_event_post) | **POST** /v1/odds/upcoming-odds-by-event | Get upcoming odds by event |


## v1_odds_upcoming_odds_by_event_post

> Object v1_odds_upcoming_odds_by_event_post(v1_odds_upcoming_odds_by_event_post_request)

Get upcoming odds by event

Returns paginated betting market positions for a specific upcoming event, optionally filtered by operator.

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

api_instance = OddittApiClient::OddsApi.new
v1_odds_upcoming_odds_by_event_post_request = OddittApiClient::V1OddsUpcomingOddsByEventPostRequest.new({event_id: 3.56}) # V1OddsUpcomingOddsByEventPostRequest | 

begin
  # Get upcoming odds by event
  result = api_instance.v1_odds_upcoming_odds_by_event_post(v1_odds_upcoming_odds_by_event_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling OddsApi->v1_odds_upcoming_odds_by_event_post: #{e}"
end
```

#### Using the v1_odds_upcoming_odds_by_event_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_odds_upcoming_odds_by_event_post_with_http_info(v1_odds_upcoming_odds_by_event_post_request)

```ruby
begin
  # Get upcoming odds by event
  data, status_code, headers = api_instance.v1_odds_upcoming_odds_by_event_post_with_http_info(v1_odds_upcoming_odds_by_event_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling OddsApi->v1_odds_upcoming_odds_by_event_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_odds_upcoming_odds_by_event_post_request** | [**V1OddsUpcomingOddsByEventPostRequest**](V1OddsUpcomingOddsByEventPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


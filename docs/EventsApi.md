# OddittApiClient::EventsApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_events_upcoming_events_post**](EventsApi.md#v1_events_upcoming_events_post) | **POST** /v1/events/upcoming-events | Get upcoming events |


## v1_events_upcoming_events_post

> Object v1_events_upcoming_events_post(v1_events_upcoming_events_post_request)

Get upcoming events

Returns upcoming events with optional sport and league filters, timezone support, and pagination.

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

api_instance = OddittApiClient::EventsApi.new
v1_events_upcoming_events_post_request = OddittApiClient::V1EventsUpcomingEventsPostRequest.new # V1EventsUpcomingEventsPostRequest | 

begin
  # Get upcoming events
  result = api_instance.v1_events_upcoming_events_post(v1_events_upcoming_events_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling EventsApi->v1_events_upcoming_events_post: #{e}"
end
```

#### Using the v1_events_upcoming_events_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_events_upcoming_events_post_with_http_info(v1_events_upcoming_events_post_request)

```ruby
begin
  # Get upcoming events
  data, status_code, headers = api_instance.v1_events_upcoming_events_post_with_http_info(v1_events_upcoming_events_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling EventsApi->v1_events_upcoming_events_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_events_upcoming_events_post_request** | [**V1EventsUpcomingEventsPostRequest**](V1EventsUpcomingEventsPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


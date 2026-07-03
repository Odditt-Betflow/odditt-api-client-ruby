# OddittApiClient::TelemetryApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_events_post**](TelemetryApi.md#v1_affiliates_events_post) | **POST** /v1/affiliates/events | Log an impression or click |


## v1_affiliates_events_post

> v1_affiliates_events_post(v1_affiliates_events_post_request)

Log an impression or click

Fire-and-forget telemetry. Records one impression (card render) or click (deeplink tap). Returns 202 on accept; never blocks the widget's click-out.

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

api_instance = OddittApiClient::TelemetryApi.new
v1_affiliates_events_post_request = OddittApiClient::V1AffiliatesEventsPostRequest.new({country_code: 'country_code_example', event_type: 'impression', offer_id: 'offer_id_example', operator_id: 3.56}) # V1AffiliatesEventsPostRequest | 

begin
  # Log an impression or click
  api_instance.v1_affiliates_events_post(v1_affiliates_events_post_request)
rescue OddittApiClient::ApiError => e
  puts "Error when calling TelemetryApi->v1_affiliates_events_post: #{e}"
end
```

#### Using the v1_affiliates_events_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_affiliates_events_post_with_http_info(v1_affiliates_events_post_request)

```ruby
begin
  # Log an impression or click
  data, status_code, headers = api_instance.v1_affiliates_events_post_with_http_info(v1_affiliates_events_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OddittApiClient::ApiError => e
  puts "Error when calling TelemetryApi->v1_affiliates_events_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_events_post_request** | [**V1AffiliatesEventsPostRequest**](V1AffiliatesEventsPostRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


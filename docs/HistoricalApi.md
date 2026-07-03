# OddittApiClient::HistoricalApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_historical_events_get**](HistoricalApi.md#v1_historical_events_get) | **GET** /v1/historical/events | List historical odds events (paginated) |
| [**v1_historical_odds_event_id_ext_get**](HistoricalApi.md#v1_historical_odds_event_id_ext_get) | **GET** /v1/historical/odds/{event_id}.{ext} | Download a per-event historical odds file |


## v1_historical_events_get

> Object v1_historical_events_get(opts)

List historical odds events (paginated)

Returns a paginated catalog of per-event historical odds files the authenticated client has access to. Each result entry carries pre-baked download URLs for the JSON and CSV payloads; clients GET those URLs directly. Results are scoped to the authenticated client; callers without a client association receive `403 Forbidden`. 

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

api_instance = OddittApiClient::HistoricalApi.new
opts = {
  schema_version: 'schema_version_example', # String | Payload schema version. Defaults to `v1` when omitted. Unknown versions are rejected.
  sport_id: 789, # Integer | 
  league_id: 789, # Integer | 
  team_id: 789, # Integer | Filter to events involving this team as either home or away.
  start_date: 'start_date_example', # String | Inclusive lower bound on the event/affiliation date, ISO format YYYY-MM-DD.
  end_date: 'end_date_example', # String | Inclusive upper bound on the event/affiliation date, ISO format YYYY-MM-DD.
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # List historical odds events (paginated)
  result = api_instance.v1_historical_events_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling HistoricalApi->v1_historical_events_get: #{e}"
end
```

#### Using the v1_historical_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_historical_events_get_with_http_info(opts)

```ruby
begin
  # List historical odds events (paginated)
  data, status_code, headers = api_instance.v1_historical_events_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling HistoricalApi->v1_historical_events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** | Payload schema version. Defaults to &#x60;v1&#x60; when omitted. Unknown versions are rejected. | [optional][default to &#39;v1&#39;] |
| **sport_id** | **Integer** |  | [optional] |
| **league_id** | **Integer** |  | [optional] |
| **team_id** | **Integer** | Filter to events involving this team as either home or away. | [optional] |
| **start_date** | **String** | Inclusive lower bound on the event/affiliation date, ISO format YYYY-MM-DD. | [optional] |
| **end_date** | **String** | Inclusive upper bound on the event/affiliation date, ISO format YYYY-MM-DD. | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_historical_odds_event_id_ext_get

> Object v1_historical_odds_event_id_ext_get(event_id, ext, opts)

Download a per-event historical odds file

Resolves the requested per-event file for the authenticated client and streams the JSON or CSV payload back. The response body is the raw file content (not the manifest envelope); the API takes care of fetching the bytes from the underlying CDN so callers see a single HTTP call per file.  The `sha256` of the bytes-at-rest is exposed as a strong `ETag`. Clients can short-circuit with `If-None-Match` to receive `304 Not Modified`. `Range` requests are forwarded upstream and `206 Partial Content` responses are relayed unchanged — useful for resuming multi-MB CSV downloads. 

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

api_instance = OddittApiClient::HistoricalApi.new
event_id = 789 # Integer | Canonical event identifier.
ext = 'json' # String | File format. `json` returns `application/json`; `csv` returns `text/csv`.
opts = {
  schema_version: 'schema_version_example' # String | Payload schema version. Defaults to `v1` when omitted.
}

begin
  # Download a per-event historical odds file
  result = api_instance.v1_historical_odds_event_id_ext_get(event_id, ext, opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling HistoricalApi->v1_historical_odds_event_id_ext_get: #{e}"
end
```

#### Using the v1_historical_odds_event_id_ext_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_historical_odds_event_id_ext_get_with_http_info(event_id, ext, opts)

```ruby
begin
  # Download a per-event historical odds file
  data, status_code, headers = api_instance.v1_historical_odds_event_id_ext_get_with_http_info(event_id, ext, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling HistoricalApi->v1_historical_odds_event_id_ext_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **Integer** | Canonical event identifier. |  |
| **ext** | **String** | File format. &#x60;json&#x60; returns &#x60;application/json&#x60;; &#x60;csv&#x60; returns &#x60;text/csv&#x60;. |  |
| **schema_version** | **String** | Payload schema version. Defaults to &#x60;v1&#x60; when omitted. | [optional][default to &#39;v1&#39;] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/csv


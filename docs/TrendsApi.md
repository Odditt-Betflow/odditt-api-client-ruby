# OddittApiClient::TrendsApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_trends_by_betting_market_position_post**](TrendsApi.md#v1_trends_by_betting_market_position_post) | **POST** /v1/trends/by-betting-market-position | Get flows by betting market position IDs |
| [**v1_trends_flow_graph_data_fact_flow_id_get**](TrendsApi.md#v1_trends_flow_graph_data_fact_flow_id_get) | **GET** /v1/trends/flow-graph-data/{fact_flow_id} | Get fact flow graph data |
| [**v1_trends_flow_tooltip_flow_type_flow_id_get**](TrendsApi.md#v1_trends_flow_tooltip_flow_type_flow_id_get) | **GET** /v1/trends/flow-tooltip/{flow_type}/{flow_id} | Get flow tooltip payload |
| [**v1_trends_flows_by_id_post**](TrendsApi.md#v1_trends_flows_by_id_post) | **POST** /v1/trends/flows-by-id | Get flows by ids |
| [**v1_trends_flows_post**](TrendsApi.md#v1_trends_flows_post) | **POST** /v1/trends/flows | Get flows (paginated) |
| [**v1_trends_flows_quote_post**](TrendsApi.md#v1_trends_flows_quote_post) | **POST** /v1/trends/flows/quote | Quote a batch of flows against the caller&#39;s configured check endpoint |
| [**v1_trends_flows_quote_sandbox_post**](TrendsApi.md#v1_trends_flows_quote_sandbox_post) | **POST** /v1/trends/flows/quote-sandbox | Mock operator pricing endpoint — for sandbox / development use |
| [**v1_trends_leagues_with_available_flows_get**](TrendsApi.md#v1_trends_leagues_with_available_flows_get) | **GET** /v1/trends/leagues-with-available-flows | Get leagues with available flows |
| [**v1_trends_mixed_flows_post**](TrendsApi.md#v1_trends_mixed_flows_post) | **POST** /v1/trends/mixed-flows | Get mixed flows (paginated) |
| [**v1_trends_widget_event_post**](TrendsApi.md#v1_trends_widget_event_post) | **POST** /v1/trends/widget/event | Submit a widget telemetry event |


## v1_trends_by_betting_market_position_post

> Object v1_trends_by_betting_market_position_post(v1_trends_by_betting_market_position_post_request)

Get flows by betting market position IDs

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

api_instance = OddittApiClient::TrendsApi.new
v1_trends_by_betting_market_position_post_request = OddittApiClient::V1TrendsByBettingMarketPositionPostRequest.new({event_betting_market_position_ids: [3.56]}) # V1TrendsByBettingMarketPositionPostRequest | 

begin
  # Get flows by betting market position IDs
  result = api_instance.v1_trends_by_betting_market_position_post(v1_trends_by_betting_market_position_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_by_betting_market_position_post: #{e}"
end
```

#### Using the v1_trends_by_betting_market_position_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_by_betting_market_position_post_with_http_info(v1_trends_by_betting_market_position_post_request)

```ruby
begin
  # Get flows by betting market position IDs
  data, status_code, headers = api_instance.v1_trends_by_betting_market_position_post_with_http_info(v1_trends_by_betting_market_position_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_by_betting_market_position_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_trends_by_betting_market_position_post_request** | [**V1TrendsByBettingMarketPositionPostRequest**](V1TrendsByBettingMarketPositionPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_flow_graph_data_fact_flow_id_get

> Object v1_trends_flow_graph_data_fact_flow_id_get(fact_flow_id)

Get fact flow graph data

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

api_instance = OddittApiClient::TrendsApi.new
fact_flow_id = 789 # Integer | The fact flow ID to get graph data for

begin
  # Get fact flow graph data
  result = api_instance.v1_trends_flow_graph_data_fact_flow_id_get(fact_flow_id)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flow_graph_data_fact_flow_id_get: #{e}"
end
```

#### Using the v1_trends_flow_graph_data_fact_flow_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_flow_graph_data_fact_flow_id_get_with_http_info(fact_flow_id)

```ruby
begin
  # Get fact flow graph data
  data, status_code, headers = api_instance.v1_trends_flow_graph_data_fact_flow_id_get_with_http_info(fact_flow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flow_graph_data_fact_flow_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fact_flow_id** | **Integer** | The fact flow ID to get graph data for |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_trends_flow_tooltip_flow_type_flow_id_get

> Object v1_trends_flow_tooltip_flow_type_flow_id_get(flow_type, flow_id)

Get flow tooltip payload

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

api_instance = OddittApiClient::TrendsApi.new
flow_type = 'fact' # String | Type of flow (fact or fun)
flow_id = 789 # Integer | The flow ID to get tooltip data for

begin
  # Get flow tooltip payload
  result = api_instance.v1_trends_flow_tooltip_flow_type_flow_id_get(flow_type, flow_id)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flow_tooltip_flow_type_flow_id_get: #{e}"
end
```

#### Using the v1_trends_flow_tooltip_flow_type_flow_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_flow_tooltip_flow_type_flow_id_get_with_http_info(flow_type, flow_id)

```ruby
begin
  # Get flow tooltip payload
  data, status_code, headers = api_instance.v1_trends_flow_tooltip_flow_type_flow_id_get_with_http_info(flow_type, flow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flow_tooltip_flow_type_flow_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_type** | **String** | Type of flow (fact or fun) |  |
| **flow_id** | **Integer** | The flow ID to get tooltip data for |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_trends_flows_by_id_post

> Object v1_trends_flows_by_id_post(v1_trends_flows_by_id_post_request)

Get flows by ids

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

api_instance = OddittApiClient::TrendsApi.new
v1_trends_flows_by_id_post_request = OddittApiClient::V1TrendsFlowsByIdPostRequest.new({flow_ids: [3.56], flow_type: 'fact_flow'}) # V1TrendsFlowsByIdPostRequest | 

begin
  # Get flows by ids
  result = api_instance.v1_trends_flows_by_id_post(v1_trends_flows_by_id_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_by_id_post: #{e}"
end
```

#### Using the v1_trends_flows_by_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_flows_by_id_post_with_http_info(v1_trends_flows_by_id_post_request)

```ruby
begin
  # Get flows by ids
  data, status_code, headers = api_instance.v1_trends_flows_by_id_post_with_http_info(v1_trends_flows_by_id_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_by_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_trends_flows_by_id_post_request** | [**V1TrendsFlowsByIdPostRequest**](V1TrendsFlowsByIdPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_flows_post

> Object v1_trends_flows_post(v1_trends_flows_post_request)

Get flows (paginated)

Same parameters as mixed-flows but returns non-mixed (single-type) flows. Uses the same underlying request model.

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

api_instance = OddittApiClient::TrendsApi.new
v1_trends_flows_post_request = OddittApiClient::V1TrendsFlowsPostRequest.new # V1TrendsFlowsPostRequest | 

begin
  # Get flows (paginated)
  result = api_instance.v1_trends_flows_post(v1_trends_flows_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_post: #{e}"
end
```

#### Using the v1_trends_flows_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_flows_post_with_http_info(v1_trends_flows_post_request)

```ruby
begin
  # Get flows (paginated)
  data, status_code, headers = api_instance.v1_trends_flows_post_with_http_info(v1_trends_flows_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_trends_flows_post_request** | [**V1TrendsFlowsPostRequest**](V1TrendsFlowsPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_flows_quote_post

> <Array<TrendsQuoteItemResult>> v1_trends_flows_quote_post(trends_quote_flow_item)

Quote a batch of flows against the caller's configured check endpoint

Accepts a JSON array of 1..50 flow specifications and, for each one, forwards a hydrated payload to the URL the caller has registered under `/v1/account/check-endpoint`. Outbound calls run in parallel; the response is a JSON array with one entry per input item, in input order. Per-item failures are encoded in each entry's `status` (and `body`) so one bad operator response does not poison the others. Batch-level failures map to HTTP 4xx without an array body — 412 when the caller has not configured a check endpoint, 422 on validation failure.

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

api_instance = OddittApiClient::TrendsApi.new
trends_quote_flow_item = [OddittApiClient::TrendsQuoteFlowItem.new({country: 'country_example', event_betting_market_position_ids: [3.56], flow_id: 3.56, flow_type: 'fact_flow'})] # Array<TrendsQuoteFlowItem> | 

begin
  # Quote a batch of flows against the caller's configured check endpoint
  result = api_instance.v1_trends_flows_quote_post(trends_quote_flow_item)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_quote_post: #{e}"
end
```

#### Using the v1_trends_flows_quote_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TrendsQuoteItemResult>>, Integer, Hash)> v1_trends_flows_quote_post_with_http_info(trends_quote_flow_item)

```ruby
begin
  # Quote a batch of flows against the caller's configured check endpoint
  data, status_code, headers = api_instance.v1_trends_flows_quote_post_with_http_info(trends_quote_flow_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TrendsQuoteItemResult>>
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_quote_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trends_quote_flow_item** | [**Array&lt;TrendsQuoteFlowItem&gt;**](TrendsQuoteFlowItem.md) |  |  |

### Return type

[**Array&lt;TrendsQuoteItemResult&gt;**](TrendsQuoteItemResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_flows_quote_sandbox_post

> <TrendsQuoteSandboxResponse> v1_trends_flows_quote_sandbox_post(trends_quote_sandbox_request)

Mock operator pricing endpoint — for sandbox / development use

Drop-in stand-in for a real operator's pricing endpoint. Accepts ONE hydrated pricing payload (the exact shape that /v1/trends/flows/quote POSTs to a configured check endpoint) and returns synthetic pricing- response data with deterministic `button_payload` values and randomly- injected failure modes (~15% rate). Integrators wire this URL into /v1/account/check-endpoint as `url` to round-trip the widget call entirely on platform infrastructure without a real operator. Not for production traffic.

### Examples

```ruby
require 'time'
require 'odditt_api_client'

api_instance = OddittApiClient::TrendsApi.new
trends_quote_sandbox_request = OddittApiClient::TrendsQuoteSandboxRequest.new({country: 'country_example', event_betting_market_position_maps: [3.56], flow_id: 3.56, flow_type: 'fact_flow'}) # TrendsQuoteSandboxRequest | 

begin
  # Mock operator pricing endpoint — for sandbox / development use
  result = api_instance.v1_trends_flows_quote_sandbox_post(trends_quote_sandbox_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_quote_sandbox_post: #{e}"
end
```

#### Using the v1_trends_flows_quote_sandbox_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsQuoteSandboxResponse>, Integer, Hash)> v1_trends_flows_quote_sandbox_post_with_http_info(trends_quote_sandbox_request)

```ruby
begin
  # Mock operator pricing endpoint — for sandbox / development use
  data, status_code, headers = api_instance.v1_trends_flows_quote_sandbox_post_with_http_info(trends_quote_sandbox_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsQuoteSandboxResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_flows_quote_sandbox_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trends_quote_sandbox_request** | [**TrendsQuoteSandboxRequest**](TrendsQuoteSandboxRequest.md) |  |  |

### Return type

[**TrendsQuoteSandboxResponse**](TrendsQuoteSandboxResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_leagues_with_available_flows_get

> Object v1_trends_leagues_with_available_flows_get(opts)

Get leagues with available flows

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

api_instance = OddittApiClient::TrendsApi.new
opts = {
  sport_id: 789, # Integer | 
  sport_key: 'sport_key_example' # String | Sport external key (e.g. 'american-football'). Format: {sport_key}. Alternative to sport_id. If both are provided, sport_id takes precedence.
}

begin
  # Get leagues with available flows
  result = api_instance.v1_trends_leagues_with_available_flows_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_leagues_with_available_flows_get: #{e}"
end
```

#### Using the v1_trends_leagues_with_available_flows_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_leagues_with_available_flows_get_with_http_info(opts)

```ruby
begin
  # Get leagues with available flows
  data, status_code, headers = api_instance.v1_trends_leagues_with_available_flows_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_leagues_with_available_flows_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Format: {sport_key}. Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_trends_mixed_flows_post

> Object v1_trends_mixed_flows_post(v1_trends_flows_post_request)

Get mixed flows (paginated)

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

api_instance = OddittApiClient::TrendsApi.new
v1_trends_flows_post_request = OddittApiClient::V1TrendsFlowsPostRequest.new # V1TrendsFlowsPostRequest | 

begin
  # Get mixed flows (paginated)
  result = api_instance.v1_trends_mixed_flows_post(v1_trends_flows_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_mixed_flows_post: #{e}"
end
```

#### Using the v1_trends_mixed_flows_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_trends_mixed_flows_post_with_http_info(v1_trends_flows_post_request)

```ruby
begin
  # Get mixed flows (paginated)
  data, status_code, headers = api_instance.v1_trends_mixed_flows_post_with_http_info(v1_trends_flows_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_mixed_flows_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_trends_flows_post_request** | [**V1TrendsFlowsPostRequest**](V1TrendsFlowsPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_trends_widget_event_post

> <TrendsWidgetEventResponse> v1_trends_widget_event_post(trends_widget_event_request)

Submit a widget telemetry event

Records a single client-side widget interaction (impression, click, dwell, or cart action) for analytics. Accepts a typed envelope `{event_type, mode, event_body}`: `event_type` is a closed enum naming the interaction, optional `mode` describes the widget mode, and `event_body` is an arbitrary JSON object whose shape depends on the event. Available only to widget API keys. Fire-and-forget: returns `202 Accepted` once the event is queued; the response does not guarantee durable storage.

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
end

api_instance = OddittApiClient::TrendsApi.new
trends_widget_event_request = OddittApiClient::TrendsWidgetEventRequest.new({event_body: { key: 3.56}, event_type: 'impression'}) # TrendsWidgetEventRequest | 

begin
  # Submit a widget telemetry event
  result = api_instance.v1_trends_widget_event_post(trends_widget_event_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_widget_event_post: #{e}"
end
```

#### Using the v1_trends_widget_event_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsWidgetEventResponse>, Integer, Hash)> v1_trends_widget_event_post_with_http_info(trends_widget_event_request)

```ruby
begin
  # Submit a widget telemetry event
  data, status_code, headers = api_instance.v1_trends_widget_event_post_with_http_info(trends_widget_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsWidgetEventResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling TrendsApi->v1_trends_widget_event_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trends_widget_event_request** | [**TrendsWidgetEventRequest**](TrendsWidgetEventRequest.md) |  |  |

### Return type

[**TrendsWidgetEventResponse**](TrendsWidgetEventResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


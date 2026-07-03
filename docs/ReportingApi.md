# OddittApiClient::ReportingApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_links_clicks_get**](ReportingApi.md#v1_affiliates_links_clicks_get) | **GET** /v1/affiliates/links/clicks | Impression/click rollups |
| [**v1_affiliates_links_inventory_summary_get**](ReportingApi.md#v1_affiliates_links_inventory_summary_get) | **GET** /v1/affiliates/links/inventory-summary | Inventory counts |


## v1_affiliates_links_clicks_get

> Object v1_affiliates_links_clicks_get(start_date, end_date, opts)

Impression/click rollups

Per-link, per-day impression and click counts for the authenticated client.

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

api_instance = OddittApiClient::ReportingApi.new
start_date = Date.parse('2013-10-20') # Date | 
end_date = Date.parse('2013-10-20') # Date | 
opts = {
  operator_id: 789, # Integer | 
  country_code: 'country_code_example', # String | 
  subnational_region_code: 'subnational_region_code_example', # String | 
  offer_campaign: 'offer_campaign_example', # String | 
  offer_label: 'offer_label_example' # String | 
}

begin
  # Impression/click rollups
  result = api_instance.v1_affiliates_links_clicks_get(start_date, end_date, opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReportingApi->v1_affiliates_links_clicks_get: #{e}"
end
```

#### Using the v1_affiliates_links_clicks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_clicks_get_with_http_info(start_date, end_date, opts)

```ruby
begin
  # Impression/click rollups
  data, status_code, headers = api_instance.v1_affiliates_links_clicks_get_with_http_info(start_date, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReportingApi->v1_affiliates_links_clicks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** |  |  |
| **end_date** | **Date** |  |  |
| **operator_id** | **Integer** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **subnational_region_code** | **String** |  | [optional] |
| **offer_campaign** | **String** |  | [optional] |
| **offer_label** | **String** |  | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_links_inventory_summary_get

> Object v1_affiliates_links_inventory_summary_get(opts)

Inventory counts

Active/inactive link counts grouped by the requested dimension.

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

api_instance = OddittApiClient::ReportingApi.new
opts = {
  group_by: 'operator' # String | 
}

begin
  # Inventory counts
  result = api_instance.v1_affiliates_links_inventory_summary_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReportingApi->v1_affiliates_links_inventory_summary_get: #{e}"
end
```

#### Using the v1_affiliates_links_inventory_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_inventory_summary_get_with_http_info(opts)

```ruby
begin
  # Inventory counts
  data, status_code, headers = api_instance.v1_affiliates_links_inventory_summary_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReportingApi->v1_affiliates_links_inventory_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_by** | **String** |  | [optional][default to &#39;operator&#39;] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


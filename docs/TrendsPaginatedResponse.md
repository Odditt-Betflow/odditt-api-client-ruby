# OddittApiClient::TrendsPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **records** | **Array&lt;Object&gt;** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsPaginatedResponse.new(
  page: null,
  page_size: null,
  records: null,
  total_count: null,
  total_pages: null
)
```


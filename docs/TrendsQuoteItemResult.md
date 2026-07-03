# OddittApiClient::TrendsQuoteItemResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** | Operator response passthrough on 200, error envelope otherwise. |  |
| **flow_id** | **Integer** |  |  |
| **flow_type** | **String** |  |  |
| **status** | **Integer** | HTTP-style status code for this single item. 200 &#x3D; success, 404 &#x3D; flow not resolvable, 502 &#x3D; upstream returned non-2xx or non-JSON, 504 &#x3D; upstream timed out. |  |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsQuoteItemResult.new(
  body: null,
  flow_id: null,
  flow_type: null,
  status: null
)
```


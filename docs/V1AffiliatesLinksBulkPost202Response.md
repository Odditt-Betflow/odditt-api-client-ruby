# OddittApiClient::V1AffiliatesLinksBulkPost202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  | [optional] |
| **mode** | **String** |  | [optional] |
| **poll_url** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **submitted_rows** | **Integer** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesLinksBulkPost202Response.new(
  job_id: null,
  mode: async,
  poll_url: null,
  status: queued,
  submitted_rows: null
)
```


# OddittApiClient::V1OddsUpcomingOddsByEventPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **Integer** | The event ID to retrieve odds for |  |
| **operator_ids** | **Array&lt;Integer&gt;** | Optional list of operator IDs to filter by | [optional] |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **page_size** | **Integer** | Number of results per page | [optional][default to 100] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1OddsUpcomingOddsByEventPostRequest.new(
  event_id: null,
  operator_ids: null,
  page: null,
  page_size: null
)
```


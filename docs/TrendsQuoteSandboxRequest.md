# OddittApiClient::TrendsQuoteSandboxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |
| **event_betting_market_position_maps** | **Array&lt;Object&gt;** | Hydrated leg array, identical to what the quote endpoint POSTs to a real operator. Pass it through unchanged. |  |
| **flow_id** | **Integer** |  |  |
| **flow_type** | **String** |  |  |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsQuoteSandboxRequest.new(
  country: null,
  event_betting_market_position_maps: null,
  flow_id: null,
  flow_type: null,
  region: null
)
```


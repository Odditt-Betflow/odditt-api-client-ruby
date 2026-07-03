# OddittApiClient::TrendsQuoteFlowItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 country code (e.g. &#39;US&#39;, &#39;IT&#39;). Uppercased server-side. |  |
| **event_betting_market_position_ids** | **Array&lt;Integer&gt;** | Leg identifiers that make up this flow. Length 1 &#x3D; single, length 2+ &#x3D; parlay. |  |
| **flow_id** | **Integer** |  |  |
| **flow_type** | **String** |  |  |
| **region** | **String** | Sub-national region code (e.g. &#39;NJ&#39;, &#39;WA&#39;). Uppercased server-side. | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsQuoteFlowItem.new(
  country: null,
  event_betting_market_position_ids: null,
  flow_id: null,
  flow_type: null,
  region: null
)
```


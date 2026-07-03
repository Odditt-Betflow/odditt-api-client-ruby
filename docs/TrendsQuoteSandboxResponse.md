# OddittApiClient::TrendsQuoteSandboxResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **american_odds_value** | **String** | Parlay only. Null when uncombinable. | [optional] |
| **button_payload** | **String** | Synthetic bet-slip identifier (prefix &#39;FD-MOCK-&#39;). Null when the result is invalid or the parlay is uncombinable. | [optional] |
| **decimal_odds_value** | **Float** |  | [optional] |
| **event_betting_market_position_maps** | **Array&lt;Object&gt;** |  |  |
| **flow_id** | **Integer** |  |  |
| **flow_type** | **String** |  |  |
| **fractional_odds_value** | **String** |  | [optional] |
| **is_combinable** | **Boolean** | Parlay only. False if any leg failed or the parlay-level uncombinable roll fired. | [optional] |
| **odds_implied_probability** | **Float** |  | [optional] |
| **parlay_failure_reason** | **String** |  | [optional] |
| **payout_multiplier** | **Float** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsQuoteSandboxResponse.new(
  american_odds_value: null,
  button_payload: null,
  decimal_odds_value: null,
  event_betting_market_position_maps: null,
  flow_id: null,
  flow_type: null,
  fractional_odds_value: null,
  is_combinable: null,
  odds_implied_probability: null,
  parlay_failure_reason: null,
  payout_multiplier: null
)
```


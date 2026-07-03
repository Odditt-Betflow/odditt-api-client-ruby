# OddittApiClient::V1AffiliatesParlayPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | ISO 3166-1 alpha-2 country code. | [optional][default to &#39;US&#39;] |
| **event_betting_market_position_ids** | **Array&lt;Integer&gt;** | The event betting market positions that make up the parlay legs. |  |
| **hide_offers_links** | **Boolean** | When true, offer metadata is returned without the deep-link URLs. | [optional] |
| **odds_format** | **String** | Odds display format. Defaults per product_mode (dfs→multiplier, prediction_market→percent, else american). | [optional] |
| **offer_campaign** | **String** | Optional campaign filter. Renders only offers tagged with this campaign. | [optional] |
| **operator_ids** | **Array&lt;Integer&gt;** | Optional list of operator IDs to gate which operators appear in the cart. | [optional] |
| **operator_keys** | **Array&lt;String&gt;** | Optional operator external keys (e.g. &#39;draftkings&#39;). Resolved IDs are merged with operator_ids. | [optional] |
| **product_mode** | **String** | Display mode. dfs rewrites leg stat lines to MORE/LESS. | [optional] |
| **subnational_region_code** | **String** | ISO 3166-2 subnational region code (used for offer/deeplink resolution). | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesParlayPostRequest.new(
  country_code: null,
  event_betting_market_position_ids: null,
  hide_offers_links: null,
  odds_format: null,
  offer_campaign: null,
  operator_ids: null,
  operator_keys: null,
  product_mode: null,
  subnational_region_code: null
)
```


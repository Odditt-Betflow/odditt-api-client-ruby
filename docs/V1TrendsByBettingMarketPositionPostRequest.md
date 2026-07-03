# OddittApiClient::V1TrendsByBettingMarketPositionPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_betting_market_position_ids** | **Array&lt;Integer&gt;** | Array of event betting market position IDs |  |
| **odds_format** | **String** | Odds display format. Defaults per product_mode (dfs→multiplier, prediction_market→percent, else american). | [optional] |
| **product_mode** | **String** | Display mode. dfs rewrites stat lines to MORE/LESS; on the paginated flows endpoints it also auto-filters to over/under player props (entity_type&#x3D;player, positions [4,5]) unless an entity/position filter is set. | [optional] |
| **use_cartoon_images** | **Boolean** | When true, the logo fields on each flow, leg, and multi-trend slot (default_logo_url, logo_url_1, logo_url_2) are replaced with cartoon-jersey image URLs derived from the relevant team, player, or league. When false or omitted, the original logo URLs are returned. Defaults to false. | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1TrendsByBettingMarketPositionPostRequest.new(
  event_betting_market_position_ids: null,
  odds_format: null,
  product_mode: null,
  use_cartoon_images: null
)
```


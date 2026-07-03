# OddittApiClient::V1TrendsFlowsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bet_type** | **String** | Filter by bet type. If omitted, returns mixed singles and parlays. | [optional] |
| **betting_market_category_id** | **Integer** | Deprecated — use &#x60;betting_market_category_ids&#x60; instead (e.g. Shooting Props, Game Props etc.). A bare &#x60;betting_market_category_id&#x60; is treated as &#x60;betting_market_category_ids: [betting_market_category_id]&#x60;. | [optional] |
| **betting_market_category_ids** | **Array&lt;Integer&gt;** | Filter by one or more betting market category IDs (e.g. Shooting Props, Game Props etc.). Empty array &#x3D; no filter. | [optional] |
| **betting_market_entity_type** | **String** | Filter by betting market entity type | [optional] |
| **betting_market_ids** | **Array&lt;Integer&gt;** | Filter by betting market IDs | [optional] |
| **betting_market_position_id** | **Integer** | Deprecated — use &#x60;betting_market_position_ids&#x60; instead. A bare &#x60;betting_market_position_id&#x60; is treated as &#x60;betting_market_position_ids: [betting_market_position_id]&#x60;. | [optional] |
| **betting_market_position_ids** | **Array&lt;Integer&gt;** | Filter by one or more betting market position IDs. Empty array &#x3D; no filter. | [optional] |
| **event_id** | **Integer** | Deprecated — use &#x60;event_ids&#x60; instead. A bare &#x60;event_id&#x60; is treated as &#x60;event_ids: [event_id]&#x60;. | [optional] |
| **event_ids** | **Array&lt;Integer&gt;** | Filter by one or more event IDs. Empty array &#x3D; no filter. | [optional] |
| **event_start_date_from** | **Time** | Filter events starting on or after this value. Accepts a date (&#39;2026-04-19&#39;) or full ISO 8601 timestamp (&#39;2026-04-19T00:00:00Z&#39;). | [optional] |
| **event_start_date_to** | **Time** | Filter events starting on or before this value. Accepts a date (&#39;2026-04-26&#39;) or full ISO 8601 timestamp (&#39;2026-04-26T23:59:59Z&#39;). | [optional] |
| **fact_flow_type** | **String** | Sub-type for fact flows. Defaults to &#39;base&#39; if omitted. | [optional] |
| **flow_type** | **String** | Type of flow to return. &#39;plain&#39; only returns parlays. | [optional] |
| **focus_entity_type_id** | **Integer** | Filter by focus entity type ID | [optional] |
| **full_hit_rate** | **Boolean** | When true, include full hit rate data in response | [optional] |
| **include_alt_lines** | **Boolean** | When false, exclude alt lines. Defaults to true. | [optional] |
| **include_deeplinks** | **Boolean** | When true, returns operator-specific odds and deeplink URLs (bet_ios_deep_link_url, bet_android_deep_link_url, bet_web_deep_link_url) for each flow. Requires exactly one operator_id in operator_ids. | [optional] |
| **include_only_basic_trends** | **Boolean** | When true, return only basic trends (omit fact flows with conditions) | [optional] |
| **include_star_sign_content** | **Boolean** | When true, include star sign/horoscope content in flows | [optional] |
| **league_id** | **Integer** | Deprecated — use &#x60;league_ids&#x60; instead. A bare &#x60;league_id&#x60; is treated as &#x60;league_ids: [league_id]&#x60;. | [optional] |
| **league_ids** | **Array&lt;Integer&gt;** | Filter by one or more league IDs. Empty array &#x3D; no filter. | [optional] |
| **league_key** | **String** | League external key (e.g. &#39;nba&#39;, &#39;united-states.nba&#39;). Format: {league_key} or {country_key}.{league_key}. Alternative to league_id. If both are provided, league_id takes precedence. | [optional] |
| **likelihood_type** | **String** | Filter by likelihood category | [optional] |
| **max_hit_rate_threshold** | **Integer** | Maximum hit rate threshold filter (0-100) | [optional] |
| **max_implied_probability_threshold** | **Float** | Maximum implied probability threshold filter | [optional] |
| **min_hit_rate_threshold** | **Integer** | Minimum hit rate threshold filter (0-100) | [optional] |
| **min_implied_probability_threshold** | **Float** | Minimum implied probability threshold filter | [optional] |
| **odds_format** | **String** | Odds display format. Defaults per product_mode (dfs→multiplier, prediction_market→percent, else american). | [optional] |
| **operator_ids** | **Array&lt;Integer&gt;** | Filter by operator IDs | [optional] |
| **operator_keys** | **Array&lt;String&gt;** | Filter by operator external keys (e.g. &#39;draftkings&#39;). Format: {operator_key}. Resolved IDs are merged with operator_ids. | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **player_id** | **Integer** | Deprecated — use &#x60;player_ids&#x60; instead. A bare &#x60;player_id&#x60; is treated as &#x60;player_ids: [player_id]&#x60;. | [optional] |
| **player_ids** | **Array&lt;Integer&gt;** | Filter by one or more player IDs. Empty array &#x3D; no filter. | [optional] |
| **player_key** | **String** | Player external key (e.g. &#39;nikola-vucevic&#39;, &#39;chicago-bulls.tre-jones&#39;, &#39;nba.boston-celtics.nikola-vucevic&#39;). Format: {player_key} or {team_key}.{player_key} or {league_key}.{team_key}.{player_key}. Alternative to player_id. If both are provided, player_id takes precedence. | [optional] |
| **product_mode** | **String** | Display mode. dfs rewrites stat lines to MORE/LESS; on the paginated flows endpoints it also auto-filters to over/under player props (entity_type&#x3D;player, positions [4,5]) unless an entity/position filter is set. | [optional] |
| **split_type** | **String** | Filter by split type (overs or unders) | [optional] |
| **sport_id** | **Integer** | Deprecated — use &#x60;sport_ids&#x60; instead. A bare &#x60;sport_id&#x60; is treated as &#x60;sport_ids: [sport_id]&#x60;. | [optional] |
| **sport_ids** | **Array&lt;Integer&gt;** | Filter by one or more sport IDs. Empty array &#x3D; no filter. | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Format: {sport_key}. Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |
| **starting_soon** | **Boolean** | When true, only return flows for events starting soon | [optional] |
| **team_id** | **Integer** | Deprecated — use &#x60;team_ids&#x60; instead. A bare &#x60;team_id&#x60; is treated as &#x60;team_ids: [team_id]&#x60;. | [optional] |
| **team_ids** | **Array&lt;Integer&gt;** | Filter by one or more team IDs. Empty array &#x3D; no filter. | [optional] |
| **team_key** | **String** | Team external key (e.g. &#39;new-england-patriots&#39;, &#39;nfl.new-england-patriots&#39;). Format: {team_key} or {league_key}.{team_key}. Alternative to team_id. If both are provided, team_id takes precedence. | [optional] |
| **team_split** | **String** | Team split filter value | [optional] |
| **use_cartoon_images** | **Boolean** | When true, the logo fields on each flow, leg, and multi-trend slot (default_logo_url, logo_url_1, logo_url_2) are replaced with cartoon-jersey image URLs derived from the relevant team, player, or league. When false or omitted, the original logo URLs are returned. Defaults to false. | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1TrendsFlowsPostRequest.new(
  bet_type: null,
  betting_market_category_id: null,
  betting_market_category_ids: null,
  betting_market_entity_type: null,
  betting_market_ids: null,
  betting_market_position_id: null,
  betting_market_position_ids: null,
  event_id: null,
  event_ids: null,
  event_start_date_from: null,
  event_start_date_to: null,
  fact_flow_type: null,
  flow_type: null,
  focus_entity_type_id: null,
  full_hit_rate: null,
  include_alt_lines: null,
  include_deeplinks: null,
  include_only_basic_trends: null,
  include_star_sign_content: null,
  league_id: null,
  league_ids: null,
  league_key: null,
  likelihood_type: null,
  max_hit_rate_threshold: null,
  max_implied_probability_threshold: null,
  min_hit_rate_threshold: null,
  min_implied_probability_threshold: null,
  odds_format: null,
  operator_ids: null,
  operator_keys: null,
  page: null,
  page_size: null,
  player_id: null,
  player_ids: null,
  player_key: null,
  product_mode: null,
  split_type: null,
  sport_id: null,
  sport_ids: null,
  sport_key: null,
  starting_soon: null,
  team_id: null,
  team_ids: null,
  team_key: null,
  team_split: null,
  use_cartoon_images: null
)
```


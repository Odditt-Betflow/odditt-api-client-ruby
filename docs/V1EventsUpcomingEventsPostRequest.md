# OddittApiClient::V1EventsUpcomingEventsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_date** | **Date** | Filter by event date (YYYY-MM-DD). Defaults to today (UTC). | [optional] |
| **league_id** | **Integer** |  | [optional] |
| **league_key** | **String** | League external key (e.g. &#39;nba&#39;, &#39;united-states.nba&#39;). Alternative to league_id. If both are provided, league_id takes precedence. | [optional] |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **page_size** | **Integer** | Number of events per page | [optional][default to 100] |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |
| **timezone** | **String** | IANA timezone for date interpretation (e.g. &#39;UTC&#39;, &#39;America/New_York&#39;, &#39;Europe/London&#39;) | [optional][default to &#39;UTC&#39;] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1EventsUpcomingEventsPostRequest.new(
  event_date: null,
  league_id: null,
  league_key: null,
  page: null,
  page_size: null,
  sport_id: null,
  sport_key: null,
  timezone: null
)
```


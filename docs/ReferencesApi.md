# OddittApiClient::ReferencesApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_references_betting_market_categories_get**](ReferencesApi.md#v1_references_betting_market_categories_get) | **GET** /v1/references/betting-market-categories | Get betting market categories |
| [**v1_references_betting_market_positions_get**](ReferencesApi.md#v1_references_betting_market_positions_get) | **GET** /v1/references/betting-market-positions | Get all betting market positions |
| [**v1_references_betting_markets_get**](ReferencesApi.md#v1_references_betting_markets_get) | **GET** /v1/references/betting-markets | Get betting markets (paginated) |
| [**v1_references_countries_get**](ReferencesApi.md#v1_references_countries_get) | **GET** /v1/references/countries | Get countries (paginated) |
| [**v1_references_event_periods_get**](ReferencesApi.md#v1_references_event_periods_get) | **GET** /v1/references/event-periods | Get event periods |
| [**v1_references_leagues_get**](ReferencesApi.md#v1_references_leagues_get) | **GET** /v1/references/leagues | Get leagues (paginated) |
| [**v1_references_odds_format_get**](ReferencesApi.md#v1_references_odds_format_get) | **GET** /v1/references/odds-format | Get odds formats (paginated) |
| [**v1_references_operators_get**](ReferencesApi.md#v1_references_operators_get) | **GET** /v1/references/operators | Get operators (paginated) |
| [**v1_references_players_get**](ReferencesApi.md#v1_references_players_get) | **GET** /v1/references/players | Get players (paginated) |
| [**v1_references_sports_get**](ReferencesApi.md#v1_references_sports_get) | **GET** /v1/references/sports | Get sports (paginated) |
| [**v1_references_subnational_regions_get**](ReferencesApi.md#v1_references_subnational_regions_get) | **GET** /v1/references/subnational-regions | Get subnational regions (paginated) |
| [**v1_references_tag_dimensions_get**](ReferencesApi.md#v1_references_tag_dimensions_get) | **GET** /v1/references/tag-dimensions | Get tag dimensions |
| [**v1_references_tag_types_search_get**](ReferencesApi.md#v1_references_tag_types_search_get) | **GET** /v1/references/tag-types/search | Search tag types |
| [**v1_references_tag_types_tag_type_id_children_get**](ReferencesApi.md#v1_references_tag_types_tag_type_id_children_get) | **GET** /v1/references/tag-types/{tag_type_id}/children | Get child tag types |
| [**v1_references_teams_get**](ReferencesApi.md#v1_references_teams_get) | **GET** /v1/references/teams | Get teams (paginated) |


## v1_references_betting_market_categories_get

> Object v1_references_betting_market_categories_get(opts)

Get betting market categories

Returns available betting market categories, optionally filtered by sport.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  sport_id: 789, # Integer | 
  sport_key: 'sport_key_example' # String | Sport external key (e.g. 'american-football'). Alternative to sport_id. If both are provided, sport_id takes precedence.
}

begin
  # Get betting market categories
  result = api_instance.v1_references_betting_market_categories_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_market_categories_get: #{e}"
end
```

#### Using the v1_references_betting_market_categories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_betting_market_categories_get_with_http_info(opts)

```ruby
begin
  # Get betting market categories
  data, status_code, headers = api_instance.v1_references_betting_market_categories_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_market_categories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_betting_market_positions_get

> Object v1_references_betting_market_positions_get

Get all betting market positions

Returns all available betting market positions.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new

begin
  # Get all betting market positions
  result = api_instance.v1_references_betting_market_positions_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_market_positions_get: #{e}"
end
```

#### Using the v1_references_betting_market_positions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_betting_market_positions_get_with_http_info

```ruby
begin
  # Get all betting market positions
  data, status_code, headers = api_instance.v1_references_betting_market_positions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_market_positions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_betting_markets_get

> Object v1_references_betting_markets_get(opts)

Get betting markets (paginated)

Returns a paginated list of betting markets with optional sport filter and text search.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  sport_id: 789, # Integer | 
  sport_key: 'sport_key_example', # String | Sport external key (e.g. 'american-football'). Alternative to sport_id. If both are provided, sport_id takes precedence.
  search: 'search_example', # String | Text search filter for betting market names
  page: 789, # Integer | Page number for pagination
  page_size: 789 # Integer | Number of results per page
}

begin
  # Get betting markets (paginated)
  result = api_instance.v1_references_betting_markets_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_markets_get: #{e}"
end
```

#### Using the v1_references_betting_markets_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_betting_markets_get_with_http_info(opts)

```ruby
begin
  # Get betting markets (paginated)
  data, status_code, headers = api_instance.v1_references_betting_markets_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_betting_markets_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |
| **search** | **String** | Text search filter for betting market names | [optional] |
| **page** | **Integer** | Page number for pagination | [optional][default to 1] |
| **page_size** | **Integer** | Number of results per page | [optional][default to 100] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_countries_get

> <TrendsPaginatedResponse> v1_references_countries_get(opts)

Get countries (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  search: 'search_example', # String | Search by country name
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Get countries (paginated)
  result = api_instance.v1_references_countries_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_countries_get: #{e}"
end
```

#### Using the v1_references_countries_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_countries_get_with_http_info(opts)

```ruby
begin
  # Get countries (paginated)
  data, status_code, headers = api_instance.v1_references_countries_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_countries_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search by country name | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_event_periods_get

> Object v1_references_event_periods_get(opts)

Get event periods

Returns available event periods, optionally filtered by sport.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  sport_id: 789, # Integer | 
  sport_key: 'sport_key_example' # String | Sport external key (e.g. 'american-football'). Alternative to sport_id. If both are provided, sport_id takes precedence.
}

begin
  # Get event periods
  result = api_instance.v1_references_event_periods_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_event_periods_get: #{e}"
end
```

#### Using the v1_references_event_periods_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_event_periods_get_with_http_info(opts)

```ruby
begin
  # Get event periods
  data, status_code, headers = api_instance.v1_references_event_periods_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_event_periods_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_leagues_get

> Object v1_references_leagues_get(opts)

Get leagues (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  country_id: 789, # Integer | 
  sport_id: 789, # Integer | 
  sport_key: 'sport_key_example', # String | Sport external key (e.g. 'american-football'). Format: {sport_key}. Alternative to sport_id. If both are provided, sport_id takes precedence.
  search: 'search_example', # String | 
  is_popular: true, # Boolean | 
  page: 789, # Integer | 
  page_size: 789, # Integer | 
  search_mode: 'search_mode_example' # String | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior.
}

begin
  # Get leagues (paginated)
  result = api_instance.v1_references_leagues_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_leagues_get: #{e}"
end
```

#### Using the v1_references_leagues_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_leagues_get_with_http_info(opts)

```ruby
begin
  # Get leagues (paginated)
  data, status_code, headers = api_instance.v1_references_leagues_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_leagues_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **Integer** |  | [optional] |
| **sport_id** | **Integer** |  | [optional] |
| **sport_key** | **String** | Sport external key (e.g. &#39;american-football&#39;). Format: {sport_key}. Alternative to sport_id. If both are provided, sport_id takes precedence. | [optional] |
| **search** | **String** |  | [optional] |
| **is_popular** | **Boolean** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |
| **search_mode** | **String** | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_odds_format_get

> <TrendsPaginatedResponse> v1_references_odds_format_get(opts)

Get odds formats (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  search: 'search_example', # String | 
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Get odds formats (paginated)
  result = api_instance.v1_references_odds_format_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_odds_format_get: #{e}"
end
```

#### Using the v1_references_odds_format_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_odds_format_get_with_http_info(opts)

```ruby
begin
  # Get odds formats (paginated)
  data, status_code, headers = api_instance.v1_references_odds_format_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_odds_format_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_operators_get

> <TrendsPaginatedResponse> v1_references_operators_get(opts)

Get operators (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  search: 'search_example', # String | Search by operator display name
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Get operators (paginated)
  result = api_instance.v1_references_operators_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_operators_get: #{e}"
end
```

#### Using the v1_references_operators_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_operators_get_with_http_info(opts)

```ruby
begin
  # Get operators (paginated)
  data, status_code, headers = api_instance.v1_references_operators_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_operators_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search by operator display name | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_players_get

> Object v1_references_players_get(opts)

Get players (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  team_id: 789, # Integer | 
  team_key: 'team_key_example', # String | Team external key (e.g. 'new-england-patriots', 'nfl.new-england-patriots'). Format: {team_key} or {league_key}.{team_key}. Alternative to team_id. If both are provided, team_id takes precedence.
  search: 'search_example', # String | 
  page: 789, # Integer | 
  page_size: 789, # Integer | 
  search_mode: 'search_mode_example' # String | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior.
}

begin
  # Get players (paginated)
  result = api_instance.v1_references_players_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_players_get: #{e}"
end
```

#### Using the v1_references_players_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_players_get_with_http_info(opts)

```ruby
begin
  # Get players (paginated)
  data, status_code, headers = api_instance.v1_references_players_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_players_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **Integer** |  | [optional] |
| **team_key** | **String** | Team external key (e.g. &#39;new-england-patriots&#39;, &#39;nfl.new-england-patriots&#39;). Format: {team_key} or {league_key}.{team_key}. Alternative to team_id. If both are provided, team_id takes precedence. | [optional] |
| **search** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |
| **search_mode** | **String** | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_sports_get

> <TrendsPaginatedResponse> v1_references_sports_get(opts)

Get sports (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  search: 'search_example', # String | 
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Get sports (paginated)
  result = api_instance.v1_references_sports_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_sports_get: #{e}"
end
```

#### Using the v1_references_sports_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_sports_get_with_http_info(opts)

```ruby
begin
  # Get sports (paginated)
  data, status_code, headers = api_instance.v1_references_sports_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_sports_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_subnational_regions_get

> <TrendsPaginatedResponse> v1_references_subnational_regions_get(country_id, opts)

Get subnational regions (paginated)

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
country_id = 789 # Integer | Country ID to filter subnational regions
opts = {
  search: 'search_example', # String | Search by subnational region name
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Get subnational regions (paginated)
  result = api_instance.v1_references_subnational_regions_get(country_id, opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_subnational_regions_get: #{e}"
end
```

#### Using the v1_references_subnational_regions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_subnational_regions_get_with_http_info(country_id, opts)

```ruby
begin
  # Get subnational regions (paginated)
  data, status_code, headers = api_instance.v1_references_subnational_regions_get_with_http_info(country_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_subnational_regions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_id** | **Integer** | Country ID to filter subnational regions |  |
| **search** | **String** | Search by subnational region name | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_tag_dimensions_get

> <V1ReferencesTagDimensionsGet200Response> v1_references_tag_dimensions_get(opts)

Get tag dimensions

Returns the top-level tag dimension categories. Use these as entry points to explore the tag hierarchy. Optionally filter to dimensions relevant to a specific flow type.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  flow_type: 'fact_flows' # String | Filter by flow type eligibility.
}

begin
  # Get tag dimensions
  result = api_instance.v1_references_tag_dimensions_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_dimensions_get: #{e}"
end
```

#### Using the v1_references_tag_dimensions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ReferencesTagDimensionsGet200Response>, Integer, Hash)> v1_references_tag_dimensions_get_with_http_info(opts)

```ruby
begin
  # Get tag dimensions
  data, status_code, headers = api_instance.v1_references_tag_dimensions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ReferencesTagDimensionsGet200Response>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_dimensions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_type** | **String** | Filter by flow type eligibility. | [optional] |

### Return type

[**V1ReferencesTagDimensionsGet200Response**](V1ReferencesTagDimensionsGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_tag_types_search_get

> <TrendsPaginatedResponse> v1_references_tag_types_search_get(opts)

Search tag types

Search across tag types by keyword. Returns paginated results with breadcrumb paths for disambiguation. Use terminal_only combined with flow_type to find only tags that are usable as filters for a specific flow type.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  search: 'search_example', # String | 
  search_mode: 'starts_with', # String | How the search term is matched. Defaults to 'starts_with'.
  dimension: 'dimension_example', # String | Limit results to a specific dimension (e.g. 'event', 'metadata').
  flow_type: 'fact_flows', # String | Filter by flow type eligibility.
  terminal_only: true, # Boolean | When true, returns only terminal (filterable) tag types.
  tag_level: 789, # Integer | Restrict results to a specific hierarchy depth.
  page: 789, # Integer | 
  page_size: 789 # Integer | 
}

begin
  # Search tag types
  result = api_instance.v1_references_tag_types_search_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_types_search_get: #{e}"
end
```

#### Using the v1_references_tag_types_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrendsPaginatedResponse>, Integer, Hash)> v1_references_tag_types_search_get_with_http_info(opts)

```ruby
begin
  # Search tag types
  data, status_code, headers = api_instance.v1_references_tag_types_search_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrendsPaginatedResponse>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_types_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** |  | [optional] |
| **search_mode** | **String** | How the search term is matched. Defaults to &#39;starts_with&#39;. | [optional] |
| **dimension** | **String** | Limit results to a specific dimension (e.g. &#39;event&#39;, &#39;metadata&#39;). | [optional] |
| **flow_type** | **String** | Filter by flow type eligibility. | [optional] |
| **terminal_only** | **Boolean** | When true, returns only terminal (filterable) tag types. | [optional][default to false] |
| **tag_level** | **Integer** | Restrict results to a specific hierarchy depth. | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |

### Return type

[**TrendsPaginatedResponse**](TrendsPaginatedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_tag_types_tag_type_id_children_get

> <V1ReferencesTagTypesTagTypeIdChildrenGet200Response> v1_references_tag_types_tag_type_id_children_get(tag_type_id, opts)

Get child tag types

Returns the direct children of a given tag type, along with context about the parent (description and known values). Use this to navigate the tag hierarchy from dimensions down to individual filterable tags.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
tag_type_id = 789 # Integer | Parent tag type ID to drill into.
opts = {
  include_values: true, # Boolean | When true, includes individual value-level leaf tags in the results. When false (default), value-level leaves are omitted — the parent's known_values field already enumerates them.
  flow_type: 'fact_flows' # String | Filter by flow type eligibility.
}

begin
  # Get child tag types
  result = api_instance.v1_references_tag_types_tag_type_id_children_get(tag_type_id, opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_types_tag_type_id_children_get: #{e}"
end
```

#### Using the v1_references_tag_types_tag_type_id_children_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1ReferencesTagTypesTagTypeIdChildrenGet200Response>, Integer, Hash)> v1_references_tag_types_tag_type_id_children_get_with_http_info(tag_type_id, opts)

```ruby
begin
  # Get child tag types
  data, status_code, headers = api_instance.v1_references_tag_types_tag_type_id_children_get_with_http_info(tag_type_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1ReferencesTagTypesTagTypeIdChildrenGet200Response>
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_tag_types_tag_type_id_children_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_type_id** | **Integer** | Parent tag type ID to drill into. |  |
| **include_values** | **Boolean** | When true, includes individual value-level leaf tags in the results. When false (default), value-level leaves are omitted — the parent&#39;s known_values field already enumerates them. | [optional][default to false] |
| **flow_type** | **String** | Filter by flow type eligibility. | [optional] |

### Return type

[**V1ReferencesTagTypesTagTypeIdChildrenGet200Response**](V1ReferencesTagTypesTagTypeIdChildrenGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_references_teams_get

> Object v1_references_teams_get(opts)

Get teams (paginated)

Returns a paginated list of teams. When neither `start_date` nor `end_date` is provided, only teams whose affiliation is currently active are returned. When either date is provided, the result is filtered to teams whose affiliation overlapped the requested window — useful for looking up teams that played in a league during a past season. 

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::ReferencesApi.new
opts = {
  league_id: 789, # Integer | 
  league_key: 'league_key_example', # String | League external key (e.g. 'nba', 'united-states.nba'). Format: {league_key} or {country_key}.{league_key}. Alternative to league_id. If both are provided, league_id takes precedence.
  search: 'search_example', # String | 
  page: 789, # Integer | 
  page_size: 789, # Integer | 
  search_mode: 'search_mode_example', # String | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior.
  start_date: 'start_date_example', # String | Inclusive lower bound on the event/affiliation date, ISO format YYYY-MM-DD.
  end_date: 'end_date_example' # String | Inclusive upper bound on the event/affiliation date, ISO format YYYY-MM-DD.
}

begin
  # Get teams (paginated)
  result = api_instance.v1_references_teams_get(opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_teams_get: #{e}"
end
```

#### Using the v1_references_teams_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_references_teams_get_with_http_info(opts)

```ruby
begin
  # Get teams (paginated)
  data, status_code, headers = api_instance.v1_references_teams_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling ReferencesApi->v1_references_teams_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **league_id** | **Integer** |  | [optional] |
| **league_key** | **String** | League external key (e.g. &#39;nba&#39;, &#39;united-states.nba&#39;). Format: {league_key} or {country_key}.{league_key}. Alternative to league_id. If both are provided, league_id takes precedence. | [optional] |
| **search** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |
| **search_mode** | **String** | Search mode (e.g. exact match vs partial). When omitted, uses default search behavior. | [optional] |
| **start_date** | **String** | Inclusive lower bound on the event/affiliation date, ISO format YYYY-MM-DD. | [optional] |
| **end_date** | **String** | Inclusive upper bound on the event/affiliation date, ISO format YYYY-MM-DD. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


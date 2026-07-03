# OddittApiClient::V1AffiliatesEventsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** |  |  |
| **device_type** | **String** |  | [optional] |
| **event_type** | **String** |  |  |
| **offer_campaign** | **String** |  | [optional] |
| **offer_id** | **String** |  |  |
| **offer_label** | **String** |  | [optional] |
| **operator_id** | **Integer** |  |  |
| **session_token** | **String** |  | [optional] |
| **subnational_region_code** | **String** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesEventsPostRequest.new(
  country_code: null,
  device_type: null,
  event_type: null,
  offer_campaign: null,
  offer_id: null,
  offer_label: null,
  operator_id: null,
  session_token: null,
  subnational_region_code: null
)
```


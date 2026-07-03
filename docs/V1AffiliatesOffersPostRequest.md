# OddittApiClient::V1AffiliatesOffersPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** |  | [optional][default to &#39;US&#39;] |
| **excluded_operator_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **hide_offers_links** | **Boolean** |  | [optional] |
| **offer_campaign** | **String** |  | [optional] |
| **operator_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **operator_keys** | **Array&lt;String&gt;** |  | [optional] |
| **operator_type_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **subnational_region_code** | **String** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesOffersPostRequest.new(
  country_code: null,
  excluded_operator_ids: null,
  hide_offers_links: null,
  offer_campaign: null,
  operator_ids: null,
  operator_keys: null,
  operator_type_ids: null,
  subnational_region_code: null
)
```


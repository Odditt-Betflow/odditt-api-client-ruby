# OddittApiClient::V1AffiliatesDealsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** |  | [optional][default to &#39;US&#39;] |
| **excluded_operator_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **hide_offers_links** | **Boolean** |  | [optional] |
| **mode** | **String** |  | [optional][default to &#39;carousel&#39;] |
| **offer_campaign** | **String** |  | [optional] |
| **offer_type** | **String** |  | [optional][default to &#39;sports&#39;] |
| **operator_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **operator_keys** | **Array&lt;String&gt;** |  | [optional] |
| **operator_type_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **page_number** | **Integer** |  | [optional][default to 1] |
| **page_size** | **Integer** |  | [optional][default to 20] |
| **subnational_region_code** | **String** |  | [optional] |
| **with_reviews** | **Boolean** | When true | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesDealsPostRequest.new(
  country_code: null,
  excluded_operator_ids: null,
  hide_offers_links: null,
  mode: null,
  offer_campaign: null,
  offer_type: null,
  operator_ids: null,
  operator_keys: null,
  operator_type_ids: null,
  page_number: null,
  page_size: null,
  subnational_region_code: null,
  with_reviews: null
)
```


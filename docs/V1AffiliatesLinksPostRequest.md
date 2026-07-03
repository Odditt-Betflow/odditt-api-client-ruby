# OddittApiClient::V1AffiliatesLinksPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **android_deep_link_url** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional][default to &#39;US&#39;] |
| **ios_deep_link_url** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional][default to true] |
| **offer_call_to_action** | **String** |  | [optional] |
| **offer_campaign** | **String** |  | [optional] |
| **offer_category_id** | **Integer** |  |  |
| **offer_display_bullets** | **Array&lt;String&gt;** |  | [optional] |
| **offer_display_small_print** | **String** |  | [optional] |
| **offer_ev_usd** | **Float** |  | [optional] |
| **offer_label** | **String** |  | [optional] |
| **offer_priority** | **Integer** |  | [optional] |
| **offer_tagline** | **String** |  | [optional] |
| **operator_id** | **Integer** | One of operator_id or operator_name is required. | [optional] |
| **operator_name** | **String** |  | [optional] |
| **source_network_affiliate_partner_id** | **Integer** |  | [optional] |
| **subnational_region_code** | **String** | Omit for country-grain inventory. | [optional] |
| **web_deep_link_url** | **String** |  |  |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1AffiliatesLinksPostRequest.new(
  android_deep_link_url: null,
  country_code: null,
  ios_deep_link_url: null,
  is_active: null,
  offer_call_to_action: null,
  offer_campaign: null,
  offer_category_id: null,
  offer_display_bullets: null,
  offer_display_small_print: null,
  offer_ev_usd: null,
  offer_label: null,
  offer_priority: null,
  offer_tagline: null,
  operator_id: null,
  operator_name: null,
  source_network_affiliate_partner_id: null,
  subnational_region_code: null,
  web_deep_link_url: null
)
```


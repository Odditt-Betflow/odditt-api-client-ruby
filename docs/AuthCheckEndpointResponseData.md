# OddittApiClient::AuthCheckEndpointResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_multiple** | **Boolean** |  | [optional] |
| **auth_header_name** | **String** |  | [optional] |
| **auth_scheme** | **String** | May be empty for raw-value header schemes like &#39;X-API-Key&#39;. | [optional] |
| **auth_token_preview** | **String** | Masked preview of the stored auth token (e.g. \&quot;…aB3x\&quot;). The full token is never returned. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **method** | **String** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::AuthCheckEndpointResponseData.new(
  allow_multiple: null,
  auth_header_name: null,
  auth_scheme: null,
  auth_token_preview: null,
  created_at: null,
  method: null,
  updated_at: null,
  url: null
)
```


# OddittApiClient::AuthListSecretsResponseSecretsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  | [optional] |
| **secret_code** | **String** |  | [optional] |
| **secret_preview** | **String** | Masked secret preview (e.g. betflow_b2b_...5678901234) | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::AuthListSecretsResponseSecretsInner.new(
  created_at: null,
  secret_code: null,
  secret_preview: null,
  updated_at: null
)
```


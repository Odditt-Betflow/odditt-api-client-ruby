# OddittApiClient::AuthCreateSecretResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_secret** | **String** | Plaintext secret (returned only once, prefixed with betflow_b2b_) | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::AuthCreateSecretResponse.new(
  client_secret: null
)
```


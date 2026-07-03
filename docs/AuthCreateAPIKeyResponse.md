# OddittApiClient::AuthCreateAPIKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | Plaintext API key (returned only once) | [optional] |
| **key_code** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **success** | **Boolean** |  | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::AuthCreateAPIKeyResponse.new(
  api_key: null,
  key_code: null,
  message: null,
  success: null
)
```


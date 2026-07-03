# OddittApiClient::TrendsWidgetEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_body** | **Hash&lt;String, Object&gt;** | Arbitrary JSON object carrying event-specific fields. May be an empty object. |  |
| **event_type** | **String** | The kind of client-side widget interaction being reported. |  |
| **mode** | **String** | Optional widget mode the interaction occurred in. Defaults to &#x60;clean&#x60;. | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::TrendsWidgetEventRequest.new(
  event_body: null,
  event_type: null,
  mode: null
)
```


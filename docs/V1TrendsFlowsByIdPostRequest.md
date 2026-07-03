# OddittApiClient::V1TrendsFlowsByIdPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fact_flow_type** | **String** | Sub-type for fact flows. Defaults to &#39;base&#39; if omitted. | [optional] |
| **flow_ids** | **Array&lt;Integer&gt;** | Array of flow IDs to retrieve |  |
| **flow_type** | **String** |  |  |
| **use_cartoon_images** | **Boolean** | When true, the logo fields on each flow, leg, and multi-trend slot (default_logo_url, logo_url_1, logo_url_2) are replaced with cartoon-jersey image URLs derived from the relevant team, player, or league. When false or omitted, the original logo URLs are returned. Defaults to false. | [optional] |

## Example

```ruby
require 'odditt_api_client'

instance = OddittApiClient::V1TrendsFlowsByIdPostRequest.new(
  fact_flow_type: null,
  flow_ids: null,
  flow_type: null,
  use_cartoon_images: null
)
```


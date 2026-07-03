# OddittApiClient::LinksApi

All URIs are relative to *https://api.odditt.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_affiliates_links_bulk_deactivate_post**](LinksApi.md#v1_affiliates_links_bulk_deactivate_post) | **POST** /v1/affiliates/links/bulk-deactivate | Bulk deactivate links by filter |
| [**v1_affiliates_links_bulk_patch**](LinksApi.md#v1_affiliates_links_bulk_patch) | **PATCH** /v1/affiliates/links/bulk | Bulk patch links by filter |
| [**v1_affiliates_links_bulk_post**](LinksApi.md#v1_affiliates_links_bulk_post) | **POST** /v1/affiliates/links/bulk | Bulk create/upsert links (JSON or CSV) |
| [**v1_affiliates_links_jobs_get**](LinksApi.md#v1_affiliates_links_jobs_get) | **GET** /v1/affiliates/links/jobs | List async bulk jobs |
| [**v1_affiliates_links_jobs_job_id_get**](LinksApi.md#v1_affiliates_links_jobs_job_id_get) | **GET** /v1/affiliates/links/jobs/{job_id} | Poll an async bulk job |
| [**v1_affiliates_links_post**](LinksApi.md#v1_affiliates_links_post) | **POST** /v1/affiliates/links | Create or upsert a single link |


## v1_affiliates_links_bulk_deactivate_post

> Object v1_affiliates_links_bulk_deactivate_post(v1_affiliates_links_bulk_deactivate_post_request)

Bulk deactivate links by filter

Soft-deletes all links matching a filter (e.g. a state goes offline).

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new
v1_affiliates_links_bulk_deactivate_post_request = OddittApiClient::V1AffiliatesLinksBulkDeactivatePostRequest.new({filter: 3.56}) # V1AffiliatesLinksBulkDeactivatePostRequest | 

begin
  # Bulk deactivate links by filter
  result = api_instance.v1_affiliates_links_bulk_deactivate_post(v1_affiliates_links_bulk_deactivate_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_deactivate_post: #{e}"
end
```

#### Using the v1_affiliates_links_bulk_deactivate_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_bulk_deactivate_post_with_http_info(v1_affiliates_links_bulk_deactivate_post_request)

```ruby
begin
  # Bulk deactivate links by filter
  data, status_code, headers = api_instance.v1_affiliates_links_bulk_deactivate_post_with_http_info(v1_affiliates_links_bulk_deactivate_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_deactivate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_links_bulk_deactivate_post_request** | [**V1AffiliatesLinksBulkDeactivatePostRequest**](V1AffiliatesLinksBulkDeactivatePostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_affiliates_links_bulk_patch

> Object v1_affiliates_links_bulk_patch(v1_affiliates_links_bulk_patch_request)

Bulk patch links by filter

Applies a patch to all links matching a filter (e.g. rewrite all FanDuel-NJ URLs on a domain change).

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new
v1_affiliates_links_bulk_patch_request = OddittApiClient::V1AffiliatesLinksBulkPatchRequest.new({filter: 3.56, patch: 3.56}) # V1AffiliatesLinksBulkPatchRequest | 

begin
  # Bulk patch links by filter
  result = api_instance.v1_affiliates_links_bulk_patch(v1_affiliates_links_bulk_patch_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_patch: #{e}"
end
```

#### Using the v1_affiliates_links_bulk_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_bulk_patch_with_http_info(v1_affiliates_links_bulk_patch_request)

```ruby
begin
  # Bulk patch links by filter
  data, status_code, headers = api_instance.v1_affiliates_links_bulk_patch_with_http_info(v1_affiliates_links_bulk_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_links_bulk_patch_request** | [**V1AffiliatesLinksBulkPatchRequest**](V1AffiliatesLinksBulkPatchRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_affiliates_links_bulk_post

> Object v1_affiliates_links_bulk_post(request_body, opts)

Bulk create/upsert links (JSON or CSV)

Upserts many links idempotently on the natural key. Accepts a JSON array of row objects or a text/csv body (header row). Per-row errors never fail the batch. Use ?dry_run=true to validate without persisting.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new
request_body = [3.56] # Array<Object> | 
opts = {
  dry_run: true, # Boolean | When true, validates the whole batch and returns the per-row report without persisting. Always synchronous.
  async: true # Boolean | Force background processing. Batches of 500+ rows are queued automatically regardless of this flag. Queued batches return 202 with a job_id to poll at /v1/affiliates/links/jobs/{job_id}.
}

begin
  # Bulk create/upsert links (JSON or CSV)
  result = api_instance.v1_affiliates_links_bulk_post(request_body, opts)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_post: #{e}"
end
```

#### Using the v1_affiliates_links_bulk_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_bulk_post_with_http_info(request_body, opts)

```ruby
begin
  # Bulk create/upsert links (JSON or CSV)
  data, status_code, headers = api_instance.v1_affiliates_links_bulk_post_with_http_info(request_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_bulk_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) |  |  |
| **dry_run** | **Boolean** | When true, validates the whole batch and returns the per-row report without persisting. Always synchronous. | [optional] |
| **async** | **Boolean** | Force background processing. Batches of 500+ rows are queued automatically regardless of this flag. Queued batches return 202 with a job_id to poll at /v1/affiliates/links/jobs/{job_id}. | [optional] |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/csv
- **Accept**: application/json


## v1_affiliates_links_jobs_get

> Object v1_affiliates_links_jobs_get

List async bulk jobs

Recent async bulk jobs for the authenticated client.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new

begin
  # List async bulk jobs
  result = api_instance.v1_affiliates_links_jobs_get
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_jobs_get: #{e}"
end
```

#### Using the v1_affiliates_links_jobs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_jobs_get_with_http_info

```ruby
begin
  # List async bulk jobs
  data, status_code, headers = api_instance.v1_affiliates_links_jobs_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_jobs_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_links_jobs_job_id_get

> Object v1_affiliates_links_jobs_job_id_get(job_id)

Poll an async bulk job

Status, counts, and per-row errors for one async bulk job. Poll until status is \"completed\" or \"failed\". Scoped to the authenticated client.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new
job_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Poll an async bulk job
  result = api_instance.v1_affiliates_links_jobs_job_id_get(job_id)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_jobs_job_id_get: #{e}"
end
```

#### Using the v1_affiliates_links_jobs_job_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_jobs_job_id_get_with_http_info(job_id)

```ruby
begin
  # Poll an async bulk job
  data, status_code, headers = api_instance.v1_affiliates_links_jobs_job_id_get_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_jobs_job_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_affiliates_links_post

> Object v1_affiliates_links_post(v1_affiliates_links_post_request)

Create or upsert a single link

Creates a link, or updates the existing one on the natural key (operator + geography + category + campaign + label). Resolves operator, country, and region at write time; unresolvable codes return 422.

### Examples

```ruby
require 'time'
require 'odditt_api_client'
# setup authorization
OddittApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OddittApiClient::LinksApi.new
v1_affiliates_links_post_request = OddittApiClient::V1AffiliatesLinksPostRequest.new({offer_category_id: 3.56, web_deep_link_url: 'web_deep_link_url_example'}) # V1AffiliatesLinksPostRequest | 

begin
  # Create or upsert a single link
  result = api_instance.v1_affiliates_links_post(v1_affiliates_links_post_request)
  p result
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_post: #{e}"
end
```

#### Using the v1_affiliates_links_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> v1_affiliates_links_post_with_http_info(v1_affiliates_links_post_request)

```ruby
begin
  # Create or upsert a single link
  data, status_code, headers = api_instance.v1_affiliates_links_post_with_http_info(v1_affiliates_links_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OddittApiClient::ApiError => e
  puts "Error when calling LinksApi->v1_affiliates_links_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v1_affiliates_links_post_request** | [**V1AffiliatesLinksPostRequest**](V1AffiliatesLinksPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


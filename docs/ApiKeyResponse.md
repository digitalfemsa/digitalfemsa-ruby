# DigitalFemsa::ApiKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the api key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds of when the api key was created | [optional] |
| **updated_at** | **Integer** | Unix timestamp in seconds of when the api key was last updated | [optional] |
| **deactivated_at** | **Integer** | Unix timestamp in seconds of when the api key was deleted | [optional] |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |
| **id** | **String** | Unique identifier of the api key | [optional] |
| **livemode** | **Boolean** | Indicates if the api key is in production | [optional] |
| **deleted** | **Boolean** | Indicates if the api key was deleted | [optional] |
| **object** | **String** | Object name, value is &#39;api_key&#39; | [optional] |
| **prefix** | **String** | The first few characters of the authentication_token | [optional] |
| **role** | **String** | Indicates if the api key is private or public | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyResponse.new(
  active: true,
  created_at: 1684167881,
  updated_at: 1684167923,
  deactivated_at: null,
  description: online store,
  id: 64625cc9f3e02c00163f5e4d,
  livemode: false,
  deleted: false,
  object: api_key,
  prefix: key_rp,
  role: private
)
```


# DigitalFemsa::ApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |
| **role** | **String** |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ApiKeyRequest.new(
  description: online store,
  role: private
)
```


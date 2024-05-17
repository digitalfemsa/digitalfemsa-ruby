# DigitalFemsa::OrderNextActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_to_url** | [**OrderNextActionResponseRedirectToUrl**](OrderNextActionResponseRedirectToUrl.md) |  | [optional] |
| **type** | **String** | Indicates the type of action to be taken | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderNextActionResponse.new(
  redirect_to_url: null,
  type: redirect_to_url
)
```


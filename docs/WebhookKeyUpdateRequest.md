# DigitalFemsa::WebhookKeyUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the webhook key is active | [optional][default to false] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::WebhookKeyUpdateRequest.new(
  active: false
)
```


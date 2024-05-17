# DigitalFemsa::Page

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_url** | **String** | URL of the next page. | [optional] |
| **previous_page_url** | **String** | Url of the previous page. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::Page.new(
  next_page_url: https://api.femsa.io/resources?limit&#x3D;10&amp;next&#x3D;chrg_1,
  previous_page_url: https://api.femsa.io/resources?limit&#x3D;10&amp;previous&#x3D;chrg_1
)
```


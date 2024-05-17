# DigitalFemsa::GetOrdersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OrderResponse&gt;**](OrderResponse.md) |  |  |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |
| **next_page_url** | **String** | URL of the next page. | [optional] |
| **previous_page_url** | **String** | Url of the previous page. | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::GetOrdersResponse.new(
  data: null,
  has_more: false,
  object: list,
  next_page_url: https://api.femsa.io/resources?limit&#x3D;10&amp;next&#x3D;chrg_1,
  previous_page_url: https://api.femsa.io/resources?limit&#x3D;10&amp;previous&#x3D;chrg_1
)
```


# DigitalFemsa::UpdateOrderDiscountLinesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **code** | **String** | Discount code. | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateOrderDiscountLinesRequest.new(
  amount: 500,
  code: 123,
  type: loyalty
)
```


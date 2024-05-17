# DigitalFemsa::PaymentMethodCashRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |
| **expires_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::PaymentMethodCashRequest.new(
  type: cash,
  expires_at: 1553273553
)
```


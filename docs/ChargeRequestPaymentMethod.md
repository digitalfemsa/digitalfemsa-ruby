# DigitalFemsa::ChargeRequestPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** | Method expiration date as unix timestamp | [optional] |
| **type** | **String** |  |  |
| **payment_source_id** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::ChargeRequestPaymentMethod.new(
  expires_at: 1677196303,
  type: cash,
  payment_source_id: src_2tLkkyfMPh6v7pFry
)
```


# DigitalFemsa::OrderResponseCustomerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_custom_reference** | **String** | Custom reference | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **corporate** | **Boolean** |  | [optional][default to false] |
| **object** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderResponseCustomerInfo.new(
  customer_custom_reference: custom_reference,
  name: DevTest,
  email: test@femsa.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info,
  customer_id: cus_23874283647
)
```


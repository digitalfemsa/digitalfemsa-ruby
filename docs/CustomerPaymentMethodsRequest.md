# DigitalFemsa::CustomerPaymentMethodsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::CustomerPaymentMethodsRequest.openapi_one_of
# =>
# [
#   :'PaymentMethodCashRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'digital_femsa'

DigitalFemsa::CustomerPaymentMethodsRequest.build(data)
# => #<PaymentMethodCashRequest:0x00007fdd4aab02a0>

DigitalFemsa::CustomerPaymentMethodsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodCashRequest`
- `nil` (if no type matches)


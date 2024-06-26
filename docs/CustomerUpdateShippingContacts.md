# DigitalFemsa::CustomerUpdateShippingContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone contact | [optional] |
| **receiver** | **String** | Name of the person who will receive the order | [optional] |
| **between_streets** | **String** | The street names between which the order will be delivered. | [optional] |
| **address** | [**CustomerShippingContactsAddress**](CustomerShippingContactsAddress.md) |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerUpdateShippingContacts.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: null,
  default: null,
  deleted: null
)
```


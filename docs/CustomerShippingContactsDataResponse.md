# DigitalFemsa::CustomerShippingContactsDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone contact | [optional] |
| **receiver** | **String** | Name of the person who will receive the order | [optional] |
| **between_streets** | **String** | The street names between which the order will be delivered. | [optional] |
| **address** | [**CustomerShippingContactsAddress**](CustomerShippingContactsAddress.md) |  |  |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the shipping contact | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerShippingContactsDataResponse.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: null,
  default: null,
  deleted: null,
  metadata: null,
  id: ship_cont_2tKZsTYcsryyu7Ah8,
  object: shipping_contact,
  created_at: 1675715413
)
```


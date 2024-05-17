# DigitalFemsa::CustomerResponseShippingContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |
| **data** | [**Array&lt;CustomerShippingContactsDataResponse&gt;**](CustomerShippingContactsDataResponse.md) |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerResponseShippingContacts.new(
  has_more: false,
  object: list,
  data: null
)
```


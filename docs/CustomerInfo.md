# DigitalFemsa::CustomerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** |  |  |
| **corporate** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::CustomerInfo.new(
  name: DevTest,
  email: test@femsa.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info
)
```


# DigitalFemsa::DetailsError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **param** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **debug_message** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::DetailsError.new(
  code: femsa.errors.authentication.missing_key,
  param: null,
  message: Acceso no autorizado.,
  debug_message: Please include your access key in your request.
)
```


# DigitalFemsa::UpdateCustomerFiscalEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**CustomerAddress**](CustomerAddress.md) |  |  |
| **tax_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **company_name** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::UpdateCustomerFiscalEntitiesResponse.new(
  address: null,
  tax_id: null,
  email: null,
  phone: null,
  metadata: null,
  company_name: Femsa,
  id: fis_ent_2tKZsTYcsryyu7Ah8,
  object: fiscal_entities,
  created_at: 1675715413,
  parent_id: cus_2tKcHxhTz7xU5SymF,
  default: null
)
```


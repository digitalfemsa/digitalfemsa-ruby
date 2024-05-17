# DigitalFemsa::OrderResponseCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** |  | [optional] |
| **can_not_expire** | **Boolean** |  | [optional] |
| **emails_sent** | **Integer** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **failure_url** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_redirect_on_failure** | **Boolean** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **needs_shipping_contact** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **recurrent** | **Boolean** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **sms_sent** | **Integer** |  | [optional] |
| **success_url** | **String** |  | [optional] |
| **starts_at** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'digital_femsa'

instance = DigitalFemsa::OrderResponseCheckout.new(
  allowed_payment_methods: null,
  can_not_expire: false,
  emails_sent: 0,
  expires_at: 1676613599,
  failure_url: http://187.216.228.66:2222/SysVentasPagos/Acceso.aspx,
  id: 6fca054a-8519-4c43-971e-cea35cc519bb,
  is_redirect_on_failure: false,
  livemode: false,
  metadata: null,
  name: ord-2tNDzhA4Akmzj11AS,
  needs_shipping_contact: false,
  object: checkout,
  on_demand_enabled: true,
  recurrent: false,
  slug: 6fca054a85194c43971ecea35cc519bb,
  sms_sent: 0,
  success_url: http://187.216.228.66:2222/SysVentasPagos/Acceso.aspx,
  starts_at: 1676354400,
  status: Issued,
  type: HostedPayment,
  url: https://pay.stg.femsa.io/checkout/6fca054a85194c43971ecea35cc519bb
)
```


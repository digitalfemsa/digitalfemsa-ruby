# DigitalFemsa::OrdersApi

All URIs are relative to *https://api.digitalfemsa.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_order**](OrdersApi.md#cancel_order) | **POST** /orders/{id}/cancel | Cancel Order |
| [**create_order**](OrdersApi.md#create_order) | **POST** /orders | Create order |
| [**get_order_by_id**](OrdersApi.md#get_order_by_id) | **GET** /orders/{id} | Get Order |
| [**get_orders**](OrdersApi.md#get_orders) | **GET** /orders | Get a list of Orders |
| [**order_cancel_refund**](OrdersApi.md#order_cancel_refund) | **DELETE** /orders/{id}/refunds/{refund_id} | Cancel Refund |
| [**order_refund**](OrdersApi.md#order_refund) | **POST** /orders/{id}/refunds | Refund Order |
| [**orders_create_capture**](OrdersApi.md#orders_create_capture) | **POST** /orders/{id}/capture | Capture Order |
| [**update_order**](OrdersApi.md#update_order) | **PUT** /orders/{id} | Update Order |


## cancel_order

> <OrderResponse> cancel_order(id, opts)

Cancel Order

Cancel an order that has been previously created.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Order
  result = api_instance.cancel_order(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->cancel_order: #{e}"
end
```

#### Using the cancel_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> cancel_order_with_http_info(id, opts)

```ruby
begin
  # Cancel Order
  data, status_code, headers = api_instance.cancel_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->cancel_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## create_order

> <OrderResponse> create_order(order_request, opts)

Create order

Create a new order.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
order_request = DigitalFemsa::OrderRequest.new({currency: 'MXN', customer_info: DigitalFemsa::CustomerInfo.new({name: 'DevTest', email: 'test@femsa.com', phone: '5522997233'}), line_items: [DigitalFemsa::Product.new({name: 'Box of Cohiba S1s', quantity: 1, unit_price: 20000})]}) # OrderRequest | requested field for order
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create order
  result = api_instance.create_order(order_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> create_order_with_http_info(order_request, opts)

```ruby
begin
  # Create order
  data, status_code, headers = api_instance.create_order_with_http_info(order_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_request** | [**OrderRequest**](OrderRequest.md) | requested field for order |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## get_order_by_id

> <OrderResponse> get_order_by_id(id, opts)

Get Order

Info for a specific order

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Order
  result = api_instance.get_order_by_id(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->get_order_by_id: #{e}"
end
```

#### Using the get_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> get_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Get Order
  data, status_code, headers = api_instance.get_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->get_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## get_orders

> <GetOrdersResponse> get_orders(opts)

Get a list of Orders

Get order details in the form of a list

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a list of Orders
  result = api_instance.get_orders(opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrdersResponse>, Integer, Hash)> get_orders_with_http_info(opts)

```ruby
begin
  # Get a list of Orders
  data, status_code, headers = api_instance.get_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrdersResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetOrdersResponse**](GetOrdersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## order_cancel_refund

> <OrderResponse> order_cancel_refund(id, refund_id, opts)

Cancel Refund

A refunded order describes the items, amount, and reason an order is being refunded.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
refund_id = '6407b5bee1329a000175ba11' # String | refund identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Refund
  result = api_instance.order_cancel_refund(id, refund_id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->order_cancel_refund: #{e}"
end
```

#### Using the order_cancel_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> order_cancel_refund_with_http_info(id, refund_id, opts)

```ruby
begin
  # Cancel Refund
  data, status_code, headers = api_instance.order_cancel_refund_with_http_info(id, refund_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->order_cancel_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **refund_id** | **String** | refund identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.app-v2.1.0+json


## order_refund

> <OrderResponse> order_refund(id, order_refund_request, opts)

Refund Order

A refunded order describes the items, amount, and reason an order is being refunded.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
order_refund_request = DigitalFemsa::OrderRefundRequest.new({amount: 500, reason: 'suspected_fraud'}) # OrderRefundRequest | requested field for a refund
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Refund Order
  result = api_instance.order_refund(id, order_refund_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->order_refund: #{e}"
end
```

#### Using the order_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> order_refund_with_http_info(id, order_refund_request, opts)

```ruby
begin
  # Refund Order
  data, status_code, headers = api_instance.order_refund_with_http_info(id, order_refund_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->order_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **order_refund_request** | [**OrderRefundRequest**](OrderRefundRequest.md) | requested field for a refund |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## orders_create_capture

> <OrderResponse> orders_create_capture(id, opts)

Capture Order

Processes an order that has been previously authorized.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  order_capture_request: DigitalFemsa::OrderCaptureRequest.new({amount: 500}) # OrderCaptureRequest | requested fields for capture order
}

begin
  # Capture Order
  result = api_instance.orders_create_capture(id, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->orders_create_capture: #{e}"
end
```

#### Using the orders_create_capture_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> orders_create_capture_with_http_info(id, opts)

```ruby
begin
  # Capture Order
  data, status_code, headers = api_instance.orders_create_capture_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->orders_create_capture_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **order_capture_request** | [**OrderCaptureRequest**](OrderCaptureRequest.md) | requested fields for capture order | [optional] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


## update_order

> <OrderResponse> update_order(id, order_update_request, opts)

Update Order

Update an existing Order.

### Examples

```ruby
require 'time'
require 'digital_femsa'
# setup authorization
DigitalFemsa.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DigitalFemsa::OrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
order_update_request = DigitalFemsa::OrderUpdateRequest.new # OrderUpdateRequest | requested field for an order
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Update Order
  result = api_instance.update_order(id, order_update_request, opts)
  p result
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderResponse>, Integer, Hash)> update_order_with_http_info(id, order_update_request, opts)

```ruby
begin
  # Update Order
  data, status_code, headers = api_instance.update_order_with_http_info(id, order_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderResponse>
rescue DigitalFemsa::ApiError => e
  puts "Error when calling OrdersApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **order_update_request** | [**OrderUpdateRequest**](OrderUpdateRequest.md) | requested field for an order |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.app-v2.1.0+json


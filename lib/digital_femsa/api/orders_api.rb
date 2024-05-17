=begin
#Femsa API

#Femsa sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@femsa.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module DigitalFemsa
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel Order
    # Cancel an order that has been previously created.
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [OrderResponse]
    def cancel_order(id, opts = {})
      data, _status_code, _headers = cancel_order_with_http_info(id, opts)
      data
    end

    # Cancel Order
    # Cancel an order that has been previously created.
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def cancel_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.cancel_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.cancel_order"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.cancel_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create order
    # Create a new order.
    # @param order_request [OrderRequest] requested field for order
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [OrderResponse]
    def create_order(order_request, opts = {})
      data, _status_code, _headers = create_order_with_http_info(order_request, opts)
      data
    end

    # Create order
    # Create a new order.
    # @param order_request [OrderRequest] requested field for order
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def create_order_with_http_info(order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.create_order ...'
      end
      # verify the required parameter 'order_request' is set
      if @api_client.config.client_side_validation && order_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_request' when calling OrdersApi.create_order"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.create_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Order
    # Info for a specific order
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [OrderResponse]
    def get_order_by_id(id, opts = {})
      data, _status_code, _headers = get_order_by_id_with_http_info(id, opts)
      data
    end

    # Get Order
    # Info for a specific order
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def get_order_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_order_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.get_order_by_id"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.get_order_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Orders
    # Get order details in the form of a list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :search General order search, e.g. by mail, reference etc.
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @return [GetOrdersResponse]
    def get_orders(opts = {})
      data, _status_code, _headers = get_orders_with_http_info(opts)
      data
    end

    # Get a list of Orders
    # Get order details in the form of a list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :search General order search, e.g. by mail, reference etc.
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @return [Array<(GetOrdersResponse, Integer, Hash)>] GetOrdersResponse data, response status code and response headers
    def get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_orders ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrdersApi.get_orders, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrdersApi.get_orders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'next'] = opts[:'_next'] if !opts[:'_next'].nil?
      query_params[:'previous'] = opts[:'previous'] if !opts[:'previous'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetOrdersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.get_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel Refund
    # A refunded order describes the items, amount, and reason an order is being refunded.
    # @param id [String] Identifier of the resource
    # @param refund_id [String] refund identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [OrderResponse]
    def order_cancel_refund(id, refund_id, opts = {})
      data, _status_code, _headers = order_cancel_refund_with_http_info(id, refund_id, opts)
      data
    end

    # Cancel Refund
    # A refunded order describes the items, amount, and reason an order is being refunded.
    # @param id [String] Identifier of the resource
    # @param refund_id [String] refund identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def order_cancel_refund_with_http_info(id, refund_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_cancel_refund ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.order_cancel_refund"
      end
      # verify the required parameter 'refund_id' is set
      if @api_client.config.client_side_validation && refund_id.nil?
        fail ArgumentError, "Missing the required parameter 'refund_id' when calling OrdersApi.order_cancel_refund"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/refunds/{refund_id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'refund_id' + '}', CGI.escape(refund_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.order_cancel_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_cancel_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refund Order
    # A refunded order describes the items, amount, and reason an order is being refunded.
    # @param id [String] Identifier of the resource
    # @param order_refund_request [OrderRefundRequest] requested field for a refund
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [OrderResponse]
    def order_refund(id, order_refund_request, opts = {})
      data, _status_code, _headers = order_refund_with_http_info(id, order_refund_request, opts)
      data
    end

    # Refund Order
    # A refunded order describes the items, amount, and reason an order is being refunded.
    # @param id [String] Identifier of the resource
    # @param order_refund_request [OrderRefundRequest] requested field for a refund
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def order_refund_with_http_info(id, order_refund_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.order_refund ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.order_refund"
      end
      # verify the required parameter 'order_refund_request' is set
      if @api_client.config.client_side_validation && order_refund_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_refund_request' when calling OrdersApi.order_refund"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/refunds'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order_refund_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.order_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#order_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture Order
    # Processes an order that has been previously authorized.
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [OrderCaptureRequest] :order_capture_request requested fields for capture order
    # @return [OrderResponse]
    def orders_create_capture(id, opts = {})
      data, _status_code, _headers = orders_create_capture_with_http_info(id, opts)
      data
    end

    # Capture Order
    # Processes an order that has been previously authorized.
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [OrderCaptureRequest] :order_capture_request requested fields for capture order
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def orders_create_capture_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_create_capture ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.orders_create_capture"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/capture'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'order_capture_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.orders_create_capture",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_create_capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Order
    # Update an existing Order.
    # @param id [String] Identifier of the resource
    # @param order_update_request [OrderUpdateRequest] requested field for an order
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [OrderResponse]
    def update_order(id, order_update_request, opts = {})
      data, _status_code, _headers = update_order_with_http_info(id, order_update_request, opts)
      data
    end

    # Update Order
    # Update an existing Order.
    # @param id [String] Identifier of the resource
    # @param order_update_request [OrderUpdateRequest] requested field for an order
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def update_order_with_http_info(id, order_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.update_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.update_order"
      end
      # verify the required parameter 'order_update_request' is set
      if @api_client.config.client_side_validation && order_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_update_request' when calling OrdersApi.update_order"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.app-v2.1.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"OrdersApi.update_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#update_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

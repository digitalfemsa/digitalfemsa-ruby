=begin
#Femsa API

#Femsa sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@femsa.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for DigitalFemsa::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = DigitalFemsa::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(DigitalFemsa::ProductsApi)
    end
  end

  # unit tests for orders_create_product
  # Create Product
  # Create a new product for an existing order.
  # @param id Identifier of the resource
  # @param product requested field for a product
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_create_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_delete_product
  # Delete Product
  # Delete product for an existing orden
  # @param id Identifier of the resource
  # @param line_item_id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_delete_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_update_product
  # Update Product
  # Update an existing product for an existing orden
  # @param id Identifier of the resource
  # @param line_item_id identifier
  # @param update_product requested field for products
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ProductOrderResponse]
  describe 'orders_update_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
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

# Unit tests for DigitalFemsa::PaymentLinkApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentLinkApi' do
  before do
    # run before each test
    @api_instance = DigitalFemsa::PaymentLinkApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentLinkApi' do
    it 'should create an instance of PaymentLinkApi' do
      expect(@api_instance).to be_instance_of(DigitalFemsa::PaymentLinkApi)
    end
  end

  # unit tests for cancel_checkout
  # Cancel Payment Link
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CheckoutResponse]
  describe 'cancel_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_checkout
  # Create Unique Payment Link
  # @param checkout requested field for checkout
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CheckoutResponse]
  describe 'create_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for email_checkout
  # Send an email
  # @param id Identifier of the resource
  # @param email_checkout_request requested field for sms checkout
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CheckoutResponse]
  describe 'email_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_checkout
  # Get a payment link by ID
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CheckoutResponse]
  describe 'get_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_checkouts
  # Get a list of payment links
  # Returns a list of links generated by the merchant
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [CheckoutsResponse]
  describe 'get_checkouts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for sms_checkout
  # Send an sms
  # @param id Identifier of the resource
  # @param sms_checkout_request requested field for sms checkout
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CheckoutResponse]
  describe 'sms_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

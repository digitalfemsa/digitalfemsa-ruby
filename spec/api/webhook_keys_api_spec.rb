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

# Unit tests for DigitalFemsa::WebhookKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookKeysApi' do
  before do
    # run before each test
    @api_instance = DigitalFemsa::WebhookKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookKeysApi' do
    it 'should create an instance of WebhookKeysApi' do
      expect(@api_instance).to be_instance_of(DigitalFemsa::WebhookKeysApi)
    end
  end

  # unit tests for create_webhook_key
  # Create Webhook Key
  # Create a webhook key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [WebhookKeyRequest] :webhook_key_request 
  # @return [WebhookKeyCreateResponse]
  describe 'create_webhook_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_webhook_key
  # Delete Webhook key
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [WebhookKeyDeleteResponse]
  describe 'delete_webhook_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhook_key
  # Get Webhook Key
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [WebhookKeyResponse]
  describe 'get_webhook_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhook_keys
  # Get List of Webhook Keys
  # Consume the list of webhook keys you have
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [GetWebhookKeysResponse]
  describe 'get_webhook_keys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_webhook_key
  # Update Webhook Key
  # updates an existing webhook key
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [WebhookKeyUpdateRequest] :webhook_key_update_request 
  # @return [WebhookKeyResponse]
  describe 'update_webhook_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end

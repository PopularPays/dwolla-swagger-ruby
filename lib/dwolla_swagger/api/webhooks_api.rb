require 'uri'

module DwollaSwagger
  class WebhooksApi
    basePath = "https://localhost/"
    # apiInvoker = APIInvoker
    @auth_names = ['oauth2']
  

    # Get webhooks by subscription id.
    # 
    # @param id ID of webhook to get.
    # @param [Hash] opts the optional parameters
    # @option opts [int] :limit How many results to return.
    # @option opts [int] :offset How many results to skip.
    # @return [WebhookEventListResponse]
    def self.hooks_by_id(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling hooks_by_id" if id.nil?
      

      # resource path
      path = "/webhook-subscriptions/{id}/webhooks".sub('{format}','json')

      
      # check if id parameter is resource URI, otherwise substitute for ID
      path = id =~ URI::regexp ? path.sub('{' + 'id' + '}', id.split('/')[-1].to_s) : path.sub('{' + 'id' + '}', id.to_s)
      

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']

      # header parameters
      header_params = opts.fetch(:headers, {})

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['location'] : (obj = WebhookEventListResponse.new() and obj.build_from_hash(response.body))

    end

    # Get a webhook by id.
    # 
    # @param id ID of webhook to get.
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def self.id(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling id" if id.nil?
      

      # resource path
      path = "/webhooks/{id}".sub('{format}','json')

      
      # check if id parameter is resource URI, otherwise substitute for ID
      path = id =~ URI::regexp ? path.sub('{' + 'id' + '}', id.split('/')[-1].to_s) : path.sub('{' + 'id' + '}', id.to_s)
      

      # query parameters
      query_params = {}

      # header parameters
      header_params = opts.fetch(:headers, {})

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['location'] : (obj = Webhook.new() and obj.build_from_hash(response.body))

    end

    # Get retries requested by webhook id.
    # 
    # @param id ID of webhook to get retries for.
    # @param [Hash] opts the optional parameters
    # @return [WebhookRetryRequestListResponse]
    def self.retries_by_id(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling retries_by_id" if id.nil?
      

      # resource path
      path = "/webhooks/{id}/retries".sub('{format}','json')

      
      # check if id parameter is resource URI, otherwise substitute for ID
      path = id =~ URI::regexp ? path.sub('{' + 'id' + '}', id.split('/')[-1].to_s) : path.sub('{' + 'id' + '}', id.to_s)
      

      # query parameters
      query_params = {}

      # header parameters
      header_params = opts.fetch(:headers, {})

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['location'] : (obj = WebhookRetryRequestListResponse.new() and obj.build_from_hash(response.body))

    end

    # Retry a webhook by id.
    # 
    # @param id ID of webhook to retry.
    # @param [Hash] opts the optional parameters
    # @return [WebhookRetry]
    def self.retry_webhook(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling retry_webhook" if id.nil?
      

      # resource path
      path = "/webhooks/{id}/retries".sub('{format}','json')

      
      # check if id parameter is resource URI, otherwise substitute for ID
      path = id =~ URI::regexp ? path.sub('{' + 'id' + '}', id.split('/')[-1].to_s) : path.sub('{' + 'id' + '}', id.to_s)
      

      # query parameters
      query_params = {}

      # header parameters
      header_params = opts.fetch(:headers, {})

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['location'] : (obj = WebhookRetry.new() and obj.build_from_hash(response.body))

    end
  end
end

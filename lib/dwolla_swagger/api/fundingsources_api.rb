require 'uri'

module DwollaSwagger
  class FundingsourcesApi
    basePath = "https://localhost/"
    # apiInvoker = APIInvoker
    @auth_names = ['oauth2']
  

    # Get an account&#39;s funding sources.
    # 
    # @param id Account id to get funding sources for.
    # @param [Hash] opts the optional parameters
    # @return [FundingSourceListResponse]
    def self.get_account_funding_sources(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_account_funding_sources" if id.nil?
      

      # resource path
      path = "/accounts/{id}/funding-sources".sub('{format}','json')

      
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
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSourceListResponse.new() and obj.build_from_hash(response.body))

    end

    # Get a customer&#39;s funding sources.
    # 
    # @param id Customer id to get funding sources for.
    # @param [Hash] opts the optional parameters
    # @return [FundingSourceListResponse]
    def self.get_customer_funding_sources(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_customer_funding_sources" if id.nil?
      

      # resource path
      path = "/customers/{id}/funding-sources".sub('{format}','json')

      
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
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSourceListResponse.new() and obj.build_from_hash(response.body))

    end

    # Create a new funding source.
    # 
    # @param id Customer id to create funding source for.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFundingSourceRequest] :body Funding source to create.
    # @return [FundingSource]
    def self.create_customer_funding_source(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling create_customer_funding_source" if id.nil?
      

      # resource path
      path = "/customers/{id}/funding-sources".sub('{format}','json')

      
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
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSource.new() and obj.build_from_hash(response.body))

    end

    # Create a new funding source.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateFundingSourceRequest] :body Funding source to create.
    # @return [FundingSource]
    def self.create_funding_source(opts = {})
      

      # resource path
      path = "/funding-sources".sub('{format}','json')

      

      # query parameters
      query_params = {}

      # header parameters
      header_params = opts.fetch(:headers, {})

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/vnd.dwolla.v1.hal+json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/vnd.dwolla.v1.hal+json']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSource.new() and obj.build_from_hash(response.body))

    end

    # Get a funding source by id.
    # 
    # @param id Funding source ID to get.
    # @param [Hash] opts the optional parameters
    # @return [FundingSource]
    def self.id(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling id" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}".sub('{format}','json')

      
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

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSource.new() and obj.build_from_hash(response.body))

    end

    # Remove a funding source.
    # 
    # @param id Funding source ID to remove.
    # @param [Hash] opts the optional parameters
    # @option opts [RemoveBankRequest] :body request body to remove a funding source
    # @return [Unit]
    def self.soft_delete(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling soft_delete" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}".sub('{format}','json')

      
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
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = Unit.new() and obj.build_from_hash(response.body))

    end

    # Delete a funding source by id.
    # 
    # @param id Funding source ID to delete.
    # @param [Hash] opts the optional parameters
    # @return [FundingSource]
    def self.delete(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling delete" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}".sub('{format}','json')

      
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
      

      response = Swagger::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSource.new() and obj.build_from_hash(response.body))

    end

    # Get the balance of a funding source.
    # 
    # @param id Funding source ID to get the balance for.
    # @param [Hash] opts the optional parameters
    # @return [FundingSourceBalance]
    def self.get_balance(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_balance" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}/balance".sub('{format}','json')

      
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

      response.code == 201 ? obj = response.headers['Location'] : (obj = FundingSourceBalance.new() and obj.build_from_hash(response.body))

    end

    # Verify pending verifications exist.
    # 
    # @param id Funding source ID to check for pending validation deposits for.
    # @param [Hash] opts the optional parameters
    # @return [MicroDeposits]
    def self.verify_micro_deposits_exist(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling verify_micro_deposits_exist" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}/micro-deposits".sub('{format}','json')

      
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

      response.code == 201 ? obj = response.headers['Location'] : (obj = MicroDeposits.new() and obj.build_from_hash(response.body))

    end

    # Initiate or verify micro deposits for bank verification.
    # 
    # @param id Funding source ID to initiate or verify micro deposits for.
    # @param [Hash] opts the optional parameters
    # @option opts [VerifyMicroDepositsRequest] :body Optional micro deposit amounts for verification
    # @return [MicroDeposits]
    def self.micro_deposits(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling micro_deposits" if id.nil?
      

      # resource path
      path = "/funding-sources/{id}/micro-deposits".sub('{format}','json')

      
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
      post_body = Swagger::Request.object_to_http_body(opts[:'body'])
      

      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => @auth_names}).make

      response.code == 201 ? obj = response.headers['Location'] : (obj = MicroDeposits.new() and obj.build_from_hash(response.body))

    end
  end
end

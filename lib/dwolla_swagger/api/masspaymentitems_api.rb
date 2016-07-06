require 'uri'

module DwollaSwagger
  class MasspaymentitemsApi
    basePath = "https://localhost/"
    # apiInvoker = APIInvoker
    @auth_names = ['oauth2']
  

    # Get a mass payment item by id.
    # 
    # @param id ID of mass payment item to get.
    # @param [Hash] opts the optional parameters
    # @return [MassPaymentItem]
    def self.by_id(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling by_id" if id.nil?
      

      # resource path
      path = "/mass-payment-items/{id}".sub('{format}','json')

      
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

      response.code == 201 ? obj = response.headers['Location'] : (obj = MassPaymentItem.new() and obj.build_from_hash(response.body))

    end

    # Get a mass payment&#39;s items.
    # 
    # @param id Mass payment id to get items for.
    # @param [Hash] opts the optional parameters
    # @option opts [int] :limit How many results to return.
    # @option opts [int] :offset How many results to skip.
    # @option opts [string] :status What status to filter by.
    # @return [MassPaymentItemListResponse]
    def self.get_mass_payment_items(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_mass_payment_items" if id.nil?
      

      # resource path
      path = "/mass-payments/{id}/items".sub('{format}','json')

      
      # check if id parameter is resource URI, otherwise substitute for ID
      path = id =~ URI::regexp ? path.sub('{' + 'id' + '}', id.split('/')[-1].to_s) : path.sub('{' + 'id' + '}', id.to_s)
      

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'status'] = opts[:'status'] if opts[:'status']

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

      response.code == 201 ? obj = response.headers['Location'] : (obj = MassPaymentItemListResponse.new() and obj.build_from_hash(response.body))

    end
  end
end

require 'uri'

module DwollaSwagger
  class DocumentsApi
    basePath = "https://localhost/"
    # apiInvoker = APIInvoker
    @auth_names = ['oauth2']
  

    # Get a document by id
    # 
    # @param id Id of document to get.
    # @param [Hash] opts the optional parameters
    # @return [Document]
    def self.get_document(id, opts = {})
      
      # verify the required parameter 'id' is set
      raise "Missing the required parameter 'id' when calling get_document" if id.nil?
      

      # resource path
      path = "/documents/{id}".sub('{format}','json')

      
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

      response.code == 201 ? obj = response.headers['Location'] : (obj = Document.new() and obj.build_from_hash(response.body))

    end
  end
end

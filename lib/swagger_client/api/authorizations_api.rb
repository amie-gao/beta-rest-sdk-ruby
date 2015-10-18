require "uri"

module SwaggerClient
  class AuthorizationsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Retrieve all authorizations
    # Search for all authorizations
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This paging parameter is used to specify the page number.
    # @option opts [Integer] :limit This paging parameter is used to specify the page size, i.e. number of records.
    # @return [AuthorizationCollection]
    def find_authorizations(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AuthorizationsApi#find_authorizations ..."
      end
      
      # resource path
      path = "/payments/v1/authorizations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthorizationCollection')
      if Configuration.debugging
        Configuration.logger.debug "API called: AuthorizationsApi#find_authorizations. Result: #{result.inspect}"
      end
      return result
    end

    # Create an authorized payment
    # Create an authorized payment
    # @param auth_request Authorize a payment
    # @param [Hash] opts the optional parameters
    # @return [Authorization]
    def authorize_payment(auth_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AuthorizationsApi#authorize_payment ..."
      end
      
      # verify the required parameter 'auth_request' is set
      fail "Missing the required parameter 'auth_request' when calling authorize_payment" if auth_request.nil?
      
      # resource path
      path = "/payments/v1/authorizations".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(auth_request)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Authorization')
      if Configuration.debugging
        Configuration.logger.debug "API called: AuthorizationsApi#authorize_payment. Result: #{result.inspect}"
      end
      return result
    end

    # Search for a specific authorization
    # Search for authorization given an id
    # @param id authorization id
    # @param [Hash] opts the optional parameters
    # @return [Authorization]
    def find_authorization(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AuthorizationsApi#find_authorization ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling find_authorization" if id.nil?
      
      # resource path
      path = "/payments/v1/authorizations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Authorization')
      if Configuration.debugging
        Configuration.logger.debug "API called: AuthorizationsApi#find_authorization. Result: #{result.inspect}"
      end
      return result
    end
  end
end





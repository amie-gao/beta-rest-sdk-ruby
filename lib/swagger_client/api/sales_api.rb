require "uri"

module SwaggerClient
  class SalesApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Search for all sales
    # Search for all sales
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element number
    # @option opts [Integer] :limit Page size
    # @return [Array<ListSaleResponse>]
    def find_sales(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SalesApi#find_sales ..."
      end
      
      # resource path
      path = "/payments/v1/sales".sub('{format}','json')

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
        :return_type => 'Array<ListSaleResponse>')
      if Configuration.debugging
        Configuration.logger.debug "API called: SalesApi#find_sales. Result: #{result.inspect}"
      end
      return result
    end

    # Perform a sale
    # Perform a sale
    # @param auth_capture_request Perform a sale
    # @param [Hash] opts the optional parameters
    # @return [SalePostResponse]
    def sale(auth_capture_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SalesApi#sale ..."
      end
      
      # verify the required parameter 'auth_capture_request' is set
      fail "Missing the required parameter 'auth_capture_request' when calling sale" if auth_capture_request.nil?
      
      # resource path
      path = "/payments/v1/sales".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(auth_capture_request)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalePostResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: SalesApi#sale. Result: #{result.inspect}"
      end
      return result
    end

    # Search for a specific sale
    # Search for sale given an id
    # @param id Search for sale given an id
    # @param [Hash] opts the optional parameters
    # @return [SaleGetResponse]
    def find_sale(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SalesApi#find_sale ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling find_sale" if id.nil?
      
      # resource path
      path = "/payments/v1/sales/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SaleGetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: SalesApi#find_sale. Result: #{result.inspect}"
      end
      return result
    end
  end
end





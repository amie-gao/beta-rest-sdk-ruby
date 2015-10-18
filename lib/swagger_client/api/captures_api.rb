require "uri"

module SwaggerClient
  class CapturesApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Search for all captures
    # Search for all captures against an authorization id
    # @param id authorization transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This paging parameter is used to specify the page number.
    # @option opts [Integer] :limit This paging parameter is used to specify the page size, i.e. number of records.
    # @return [ListCaptureResponse]
    def find_authorization_captures(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CapturesApi#find_authorization_captures ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling find_authorization_captures" if id.nil?
      
      # resource path
      path = "/payments/v1/authorizations/{id}/captures".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ListCaptureResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CapturesApi#find_authorization_captures. Result: #{result.inspect}"
      end
      return result
    end

    # Capture against a payment authorization
    # Capture against a payment against an authorization id
    # @param id authorize transaction id
    # @param capture_request Capture request data
    # @param [Hash] opts the optional parameters
    # @return [CapturePostResponse]
    def capture(id, capture_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CapturesApi#capture ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling capture" if id.nil?
      
      # verify the required parameter 'capture_request' is set
      fail "Missing the required parameter 'capture_request' when calling capture" if capture_request.nil?
      
      # resource path
      path = "/payments/v1/authorizations/{id}/captures".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(capture_request)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CapturePostResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CapturesApi#capture. Result: #{result.inspect}"
      end
      return result
    end

    # Search for all captures
    # Search for all captures in a paginated basis
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element number
    # @option opts [Integer] :limit Page size
    # @return [ListCaptureResponse]
    def find_captures(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CapturesApi#find_captures ..."
      end
      
      # resource path
      path = "/payments/v1/captures".sub('{format}','json')

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
        :return_type => 'ListCaptureResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CapturesApi#find_captures. Result: #{result.inspect}"
      end
      return result
    end

    # Search for a capture
    # Search for capture given an id
    # @param id authorization transaction id
    # @param [Hash] opts the optional parameters
    # @return [CaptureGetResponse]
    def get_capture(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CapturesApi#get_capture ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_capture" if id.nil?
      
      # resource path
      path = "/payments/v1/captures/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CaptureGetResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: CapturesApi#get_capture. Result: #{result.inspect}"
      end
      return result
    end
  end
end





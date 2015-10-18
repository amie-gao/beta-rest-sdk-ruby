require "uri"

module SwaggerClient
  class VoidsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Void a capture transaction
    # 
    # @param id Capture transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def do_capture_void(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VoidsApi#do_capture_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_capture_void" if id.nil?
      
      # resource path
      path = "/payments/v1/captures/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Void')
      if Configuration.debugging
        Configuration.logger.debug "API called: VoidsApi#do_capture_void. Result: #{result.inspect}"
      end
      return result
    end

    # Void a refund transaction
    # 
    # @param id Refund transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def do_refund_void(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VoidsApi#do_refund_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_refund_void" if id.nil?
      
      # resource path
      path = "/payments/v1/refunds/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Void')
      if Configuration.debugging
        Configuration.logger.debug "API called: VoidsApi#do_refund_void. Result: #{result.inspect}"
      end
      return result
    end

    # Void a sale transaction
    # 
    # @param id Sales transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def do_sale_void(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VoidsApi#do_sale_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_sale_void" if id.nil?
      
      # resource path
      path = "/payments/v1/sales/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Void')
      if Configuration.debugging
        Configuration.logger.debug "API called: VoidsApi#do_sale_void. Result: #{result.inspect}"
      end
      return result
    end

    # Retrieve a void
    # 
    # @param id Unique identifier for the transaction
    # @param [Hash] opts the optional parameters
    # @return [Void]
    def get_void(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VoidsApi#get_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_void" if id.nil?
      
      # resource path
      path = "/payments/v1/voids/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Void')
      if Configuration.debugging
        Configuration.logger.debug "API called: VoidsApi#get_void. Result: #{result.inspect}"
      end
      return result
    end
  end
end





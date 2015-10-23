require "uri"

module CybsClient

  class VoidsApi


    # Void a capture transaction
    # 
    # @param id Capture transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def self.do_capture_void(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: VoidsApi#do_capture_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_capture_void" if id.nil?
      
      # resource path
      path = "payments/v1/captures/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Void')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: VoidsApi#do_capture_void. Result: #{result.inspect}"
      end
      result
    end


    # Void a refund transaction
    # 
    # @param id Refund transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def self.do_refund_void(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: VoidsApi#do_refund_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_refund_void" if id.nil?
      
      # resource path
      path = "payments/v1/refunds/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Void')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: VoidsApi#do_refund_void. Result: #{result.inspect}"
      end
      result
    end


    # Void a sale transaction
    # 
    # @param id Sales transaction id
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [Void]
    def self.do_sale_void(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: VoidsApi#do_sale_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_sale_void" if id.nil?
      
      # resource path
      path = "payments/v1/sales/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Void')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: VoidsApi#do_sale_void. Result: #{result.inspect}"
      end
      result
    end


    # Retrieve a void
    # 
    # @param id Unique identifier for the transaction
    # @param [Hash] opts the optional parameters
    # @return [Void]
    def self.get_void(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: VoidsApi#get_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_void" if id.nil?
      
      # resource path
      path = "payments/v1/voids/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Void')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: VoidsApi#get_void. Result: #{result.inspect}"
      end
      result
    end

  end

end

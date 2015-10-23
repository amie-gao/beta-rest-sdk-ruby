require "uri"

module CybsClient

  class RefundsApi


    # List refunds for a capture
    # Returns a list of refunds for a particular capture transaction
    # @param capture_id The ID of the capture to refund
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset offset
    # @option opts [Integer] :limit limit
    # @return [Array<ListRefundResponse>]
    def self.list_capture_refunds(capture_id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#list_capture_refunds ..."
      end
      
      # verify the required parameter 'capture_id' is set
      fail "Missing the required parameter 'capture_id' when calling list_capture_refunds" if capture_id.nil?
      
      # resource path
      path = "payments/v1/captures/{id}/refunds".sub('{format}','json').sub('{' + 'captureId' + '}', capture_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

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
      result = response.deserialize('Array<ListRefundResponse>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#list_capture_refunds. Result: #{result.inspect}"
      end
      result
    end


    # Refund a captured payment
    # Creates a refund for a particular capture
    # @param id ID of the capture to refund
    # @param [Hash] opts the optional parameters
    # @option opts [RefundRequest] :refund_request Capture request data
    # @return [RefundPostResponse]
    def self.refund_capture(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#refund_capture ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling refund_capture" if id.nil?
      
      # resource path
      path = "payments/v1/captures/{id}/refunds".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = Swagger::Request.object_to_http_body(opts[:'refund_request'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('RefundPostResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#refund_capture. Result: #{result.inspect}"
      end
      result
    end


    # List refunds
    # Lists successful refunds
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset offset
    # @option opts [Integer] :limit limit
    # @return [ListRefundResponse]
    def self.list_refunds(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#list_refunds ..."
      end
      
      # resource path
      path = "payments/v1/refunds".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

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
      result = response.deserialize('ListRefundResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#list_refunds. Result: #{result.inspect}"
      end
      result
    end


    # Retrieve a refund
    # Retrieves a refund by ID
    # @param id The ID of the refund
    # @param [Hash] opts the optional parameters
    # @return [RefundGetResponse]
    def self.get_refund(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#get_refund ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_refund" if id.nil?
      
      # resource path
      path = "payments/v1/refunds/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      result = response.deserialize('RefundGetResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#get_refund. Result: #{result.inspect}"
      end
      result
    end


    # List refunds for a sale
    # Returns a list of refunds for a particular sale transaction
    # @param sale_id The ID of the sale to refund
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset offset
    # @option opts [Integer] :limit limit
    # @return [Array<ListRefundResponse>]
    def self.list_sale_refunds(sale_id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#list_sale_refunds ..."
      end
      
      # verify the required parameter 'sale_id' is set
      fail "Missing the required parameter 'sale_id' when calling list_sale_refunds" if sale_id.nil?
      
      # resource path
      path = "payments/v1/sales/{id}/refunds".sub('{format}','json').sub('{' + 'saleId' + '}', sale_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

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
      result = response.deserialize('Array<ListRefundResponse>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#list_sale_refunds. Result: #{result.inspect}"
      end
      result
    end


    # Refund a sale payment
    # Creates a refund for a particular sale
    # @param id ID of the sale to refund
    # @param [Hash] opts the optional parameters
    # @option opts [RefundRequest] :refund_request sale request data
    # @return [RefundPostResponse]
    def self.refund_sale(id, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: RefundsApi#refund_sale ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling refund_sale" if id.nil?
      
      # resource path
      path = "payments/v1/sales/{id}/refunds".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = Swagger::Request.object_to_http_body(opts[:'refund_request'])
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('RefundPostResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: RefundsApi#refund_sale. Result: #{result.inspect}"
      end
      result
    end

  end

end

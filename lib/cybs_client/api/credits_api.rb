require "uri"

module CybsClient
  class CreditsApi

    # Retrieve all Credits
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset offset
    # @option opts [Integer] :limit limit
    # @return [Array<ListCreditResponse>]
    def self.get_credits(opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: CreditsApi#get_credits ..."
      end
      
      # resource path
      path = "payments/v1/credits".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Cybs::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Cybs::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Cybs::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<ListCreditResponse>')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: CreditsApi#get_credits. Result: #{result.inspect}"
      end
      result
    end

    # Post a Credit
    # Creates a new Credit
    # @param credit_request credit request data
    # @param [Hash] opts the optional parameters
    # @return [CreditPostResponse]
    def self.post_credit(credit_request, opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: CreditsApi#post_credit ..."
      end
      
      # verify the required parameter 'credit_request' is set
      fail "Missing the required parameter 'credit_request' when calling post_credit" if credit_request.nil?
      
      # resource path
      path = "payments/v1/credits".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Cybs::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Cybs::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Cybs::Request.object_to_http_body(credit_request)
      

      auth_names = []
      response = Cybs::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('CreditPostResponse')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: CreditsApi#post_credit. Result: #{result.inspect}"
      end
      result
    end

    # Retrieve a Credit
    # 
    # @param id Unique identifier for the transaction
    # @param [Hash] opts the optional parameters
    # @return [CreditGetResponse]
    def self.find_credit(id, opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: CreditsApi#find_credit ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling find_credit" if id.nil?
      
      # resource path
      path = "payments/v1/credits/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Cybs::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Cybs::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      response = Cybs::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('CreditGetResponse')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: CreditsApi#find_credit. Result: #{result.inspect}"
      end
      result
    end

    # Void a credit
    # Void a credit
    # @param id creditId
    # @param [Hash] opts the optional parameters
    # @option opts [VoidRequest] :void_request Void request data
    # @return [CreditResponseWithSelfLink]
    def self.do_credit_void(id, opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: CreditsApi#do_credit_void ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling do_credit_void" if id.nil?
      
      # resource path
      path = "payments/v1/credits/{id}/voids".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Cybs::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Cybs::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Cybs::Request.object_to_http_body(opts[:'void_request'])
      

      auth_names = []
      response = Cybs::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('CreditResponseWithSelfLink')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: CreditsApi#do_credit_void. Result: #{result.inspect}"
      end
      result
    end
  end
end

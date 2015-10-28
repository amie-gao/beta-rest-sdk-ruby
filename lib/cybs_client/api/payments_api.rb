require "uri"

module CybsClient
  class PaymentsApi

    # Transaction Search
    # Transaction search
    # @param search_request Search transaction request 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This paging parameter is used to specify the page number.
    # @option opts [Integer] :limit This paging parameter is used to specify the page size, i.e. number of records.
    # @return [TransactionSearch]
    def self.search_payment(search_request, opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: PaymentsApi#search_payment ..."
      end
      
      # verify the required parameter 'search_request' is set
      fail "Missing the required parameter 'search_request' when calling search_payment" if search_request.nil?
      
      # resource path
      path = "payments/v1/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Cybs::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Cybs::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Cybs::Request.object_to_http_body(search_request)
      

      auth_names = []
      response = Cybs::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('TransactionSearch')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: PaymentsApi#search_payment. Result: #{result.inspect}"
      end
      result
    end

    # Get submitted authorizations, sales, captures, or refunds
    # The payments endpoint returns information about your submitted payments. The response includes transaction details.
    # @param id transaction id
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def self.get_payment(id, opts = {})
      if Cybs.configuration.debug
        Cybs.logger.debug "Calling API: PaymentsApi#get_payment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_payment" if id.nil?
      
      # resource path
      path = "payments/v1/search/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      result = response.deserialize('Transaction')
      if Cybs.configuration.debug
        Cybs.logger.debug "API called: PaymentsApi#get_payment. Result: #{result.inspect}"
      end
      result
    end
  end
end

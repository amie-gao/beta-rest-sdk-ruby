require "uri"

module SwaggerClient
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Transaction Search
    # Transaction search
    # @param search_request Search transaction request
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset This paging parameter is used to specify the page number.
    # @option opts [Integer] :limit This paging parameter is used to specify the page size, i.e. number of records.
    # @return [TransactionSearch]
    def search_payment(search_request, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PaymentsApi#search_payment ..."
      end
      
      # verify the required parameter 'search_request' is set
      fail "Missing the required parameter 'search_request' when calling search_payment" if search_request.nil?
      
      # resource path
      path = "/payments/v1/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(search_request)
      

      auth_names = ['api_key']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionSearch')
      if Configuration.debugging
        Configuration.logger.debug "API called: PaymentsApi#search_payment. Result: #{result.inspect}"
      end
      return result
    end

    # Get submitted authorizations, sales, captures, or refunds
    # The payments endpoint returns information about your submitted payments. The response includes transaction details.
    # @param id transaction id
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def get_payment(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PaymentsApi#get_payment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_payment" if id.nil?
      
      # resource path
      path = "/payments/v1/search/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['api_key']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if Configuration.debugging
        Configuration.logger.debug "API called: PaymentsApi#get_payment. Result: #{result.inspect}"
      end
      return result
    end
  end
end





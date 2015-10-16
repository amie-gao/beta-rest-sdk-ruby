# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/auth_capture_request'
require 'swagger_client/models/authorization_links'
require 'swagger_client/models/collection_links'
require 'swagger_client/models/authorization'
require 'swagger_client/models/list_authorization'
require 'swagger_client/models/authorization_collection'
require 'swagger_client/models/bill_to'
require 'swagger_client/models/ship_to'
require 'swagger_client/models/error'
require 'swagger_client/models/item'
require 'swagger_client/models/link'
require 'swagger_client/models/links'
require 'swagger_client/models/payment'
require 'swagger_client/models/refund'
require 'swagger_client/models/refund_request'
require 'swagger_client/models/response_status'
require 'swagger_client/models/response_status_details'
require 'swagger_client/models/sale'
require 'swagger_client/models/search_result'
require 'swagger_client/models/transaction'
require 'swagger_client/models/transaction_request'
require 'swagger_client/models/transaction_search'
require 'swagger_client/models/void_request'
require 'swagger_client/models/capture_post_response'
require 'swagger_client/models/capture_post_links'
require 'swagger_client/models/capture_get_response'
require 'swagger_client/models/list_capture_response'
require 'swagger_client/models/list_capture'
require 'swagger_client/models/capture_response_with_self_link'
require 'swagger_client/models/void'
require 'swagger_client/models/list_void'
require 'swagger_client/models/list_void_response'
require 'swagger_client/models/capture'
require 'swagger_client/models/capture_request'
require 'swagger_client/models/credit_request'
require 'swagger_client/models/credit'
require 'swagger_client/models/authorization_response'
require 'swagger_client/models/sale_post_response'
require 'swagger_client/models/sale_post_links'
require 'swagger_client/models/sale_get_response'
require 'swagger_client/models/list_sale_response'
require 'swagger_client/models/list_sale'
require 'swagger_client/models/sale_response'
require 'swagger_client/models/refund_post_response'
require 'swagger_client/models/refund_post_links'
require 'swagger_client/models/refund_get_response'
require 'swagger_client/models/list_refund_response'
require 'swagger_client/models/list_refund'
require 'swagger_client/models/refund_response'
require 'swagger_client/models/list_credit_response'
require 'swagger_client/models/credit_post_response'
require 'swagger_client/models/credit_post_links'
require 'swagger_client/models/credit_get_response'
require 'swagger_client/models/list_self_links'
require 'swagger_client/models/list_credit'
require 'swagger_client/models/credit_response_with_self_link'
require 'swagger_client/models/self_link'
require 'swagger_client/models/transaction_search_request'
require 'swagger_client/models/merchant_defined_data'
require 'swagger_client/models/offer'
require 'swagger_client/models/merchant_descriptor'

# APIs
require 'swagger_client/api/voids_api'
require 'swagger_client/api/authorizations_api'
require 'swagger_client/api/credits_api'
require 'swagger_client/api/sales_api'
require 'swagger_client/api/refunds_api'
require 'swagger_client/api/payments_api'
require 'swagger_client/api/captures_api'

module SwaggerClient
  class << self
    # Configure sdk using block.
    # SwaggerClient.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end

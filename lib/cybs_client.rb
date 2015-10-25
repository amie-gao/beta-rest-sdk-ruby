# Swagger common files
require 'cybs_client/cybs'
require 'cybs_client/cybs/configuration'
require 'cybs_client/cybs/api_error'
require 'cybs_client/cybs/request'
require 'cybs_client/cybs/response'
require 'cybs_client/cybs/version'

# Models
require 'cybs_client/models/base_object'

require 'cybs_client/models/auth_capture_request'

require 'cybs_client/models/authorization_links'

require 'cybs_client/models/collection_links'

require 'cybs_client/models/authorization'

require 'cybs_client/models/list_authorization'

require 'cybs_client/models/authorization_collection'

require 'cybs_client/models/bill_to'

require 'cybs_client/models/ship_to'

require 'cybs_client/models/error'

require 'cybs_client/models/item'

require 'cybs_client/models/link'

require 'cybs_client/models/links'

require 'cybs_client/models/payment'

require 'cybs_client/models/refund'

require 'cybs_client/models/refund_request'

require 'cybs_client/models/response_status'

require 'cybs_client/models/response_status_details'

require 'cybs_client/models/sale'

require 'cybs_client/models/search_result'

require 'cybs_client/models/transaction'

require 'cybs_client/models/transaction_request'

require 'cybs_client/models/transaction_search'

require 'cybs_client/models/void_request'

require 'cybs_client/models/capture_post_response'

require 'cybs_client/models/capture_post_links'

require 'cybs_client/models/capture_get_response'

require 'cybs_client/models/list_capture_response'

require 'cybs_client/models/list_capture'

require 'cybs_client/models/capture_response_with_self_link'

require 'cybs_client/models/void'

require 'cybs_client/models/list_void'

require 'cybs_client/models/list_void_response'

require 'cybs_client/models/capture'

require 'cybs_client/models/capture_request'

require 'cybs_client/models/credit_request'

require 'cybs_client/models/credit'

require 'cybs_client/models/authorization_response'

require 'cybs_client/models/sale_post_response'

require 'cybs_client/models/sale_post_links'

require 'cybs_client/models/sale_get_response'

require 'cybs_client/models/list_sale_response'

require 'cybs_client/models/list_sale'

require 'cybs_client/models/sale_response'

require 'cybs_client/models/refund_post_response'

require 'cybs_client/models/refund_post_links'

require 'cybs_client/models/refund_get_response'

require 'cybs_client/models/list_refund_response'

require 'cybs_client/models/list_refund'

require 'cybs_client/models/refund_response'

require 'cybs_client/models/list_credit_response'

require 'cybs_client/models/credit_post_response'

require 'cybs_client/models/credit_post_links'

require 'cybs_client/models/credit_get_response'

require 'cybs_client/models/list_self_links'

require 'cybs_client/models/list_credit'

require 'cybs_client/models/credit_response_with_self_link'

require 'cybs_client/models/self_link'

require 'cybs_client/models/transaction_search_request'

require 'cybs_client/models/merchant_defined_data'

require 'cybs_client/models/offer'

require 'cybs_client/models/merchant_descriptor'


# APIs


require 'cybs_client/api/voids_api'

require 'cybs_client/api/authorizations_api'

require 'cybs_client/api/credits_api'

require 'cybs_client/api/sales_api'

require 'cybs_client/api/refunds_api'

require 'cybs_client/api/payments_api'

require 'cybs_client/api/captures_api'



module CybsClient
  # Initialize the default configuration
  Cybs.configuration = Cybs::Configuration.new
  Cybs.configure { |config| }
end

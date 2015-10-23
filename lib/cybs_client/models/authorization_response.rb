module CybsClient
  # 
  class AuthorizationResponse < BaseObject
    attr_accessor :amount, :auth_code, :_links, :merchant_defined_data, :merchant_descriptor, :reference_id, :commerce_indicator, :payment_solution, :ignore_bad_cvn, :bill_to, :vc_order_id, :currency, :payment, :id, :ignore_avs, :items, :status, :ship_to
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Amount of the transaction
        :'amount' => :'amount',
        
        # Authorization code for the transaction
        :'auth_code' => :'authCode',
        
        # 
        :'_links' => :'_links',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Type of transaction. Some payment card companies use this information when determining discount rates.
        :'commerce_indicator' => :'commerceIndicator',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # Setting to ignore bad CVN
        :'ignore_bad_cvn' => :'ignoreBadCvn',
        
        # 
        :'bill_to' => :'billTo',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # Currency used for the transaction
        :'currency' => :'currency',
        
        # 
        :'payment' => :'payment',
        
        # Unique identifier for the transaction
        :'id' => :'id',
        
        # Setting to ignore Avs
        :'ignore_avs' => :'ignoreAvs',
        
        # 
        :'items' => :'items',
        
        # Status of authorization
        :'status' => :'status',
        
        # 
        :'ship_to' => :'shipTo'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'auth_code' => :'String',
        :'_links' => :'SelfLink',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'merchant_descriptor' => :'MerchantDescriptor',
        :'reference_id' => :'String',
        :'commerce_indicator' => :'String',
        :'payment_solution' => :'String',
        :'ignore_bad_cvn' => :'String',
        :'bill_to' => :'BillTo',
        :'vc_order_id' => :'String',
        :'currency' => :'String',
        :'payment' => :'Payment',
        :'id' => :'String',
        :'ignore_avs' => :'String',
        :'items' => :'Array<Offer>',
        :'status' => :'String',
        :'ship_to' => :'ShipTo'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'authCode']
        self.auth_code = attributes[:'authCode']
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
      if attributes[:'merchantDefinedData']
        self.merchant_defined_data = attributes[:'merchantDefinedData']
      end
      
      if attributes[:'merchantDescriptor']
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'commerceIndicator']
        self.commerce_indicator = attributes[:'commerceIndicator']
      end
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
      end
      
      if attributes[:'ignoreBadCvn']
        self.ignore_bad_cvn = attributes[:'ignoreBadCvn']
      end
      
      if attributes[:'billTo']
        self.bill_to = attributes[:'billTo']
      end
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'payment']
        self.payment = attributes[:'payment']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'ignoreAvs']
        self.ignore_avs = attributes[:'ignoreAvs']
      end
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'shipTo']
        self.ship_to = attributes[:'shipTo']
      end
      
    end

    def status=(status)
      allowed_values = ["PendingCapture"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end


end

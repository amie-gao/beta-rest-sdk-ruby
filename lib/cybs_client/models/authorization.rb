module CybsClient
  # 
  class Authorization < BaseObject
    attr_accessor :id, :status, :amount, :currency, :auth_code, :reference_id, :ignore_avs, :ignore_bad_cvn, :commerce_indicator, :vc_order_id, :payment_solution, :merchant_defined_data, :merchant_descriptor, :payment, :bill_to, :ship_to, :items, :_links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the transaction
        :'id' => :'id',
        
        # Status of authorization
        :'status' => :'status',
        
        # Amount of the transaction
        :'amount' => :'amount',
        
        # Currency used for the transaction
        :'currency' => :'currency',
        
        # Authorization code for the transaction
        :'auth_code' => :'authCode',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Setting to ignore Avs
        :'ignore_avs' => :'ignoreAvs',
        
        # Setting to ignore bad CVN
        :'ignore_bad_cvn' => :'ignoreBadCvn',
        
        # Type of transaction. Some payment card companies use this information when determining discount rates.
        :'commerce_indicator' => :'commerceIndicator',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor',
        
        # 
        :'payment' => :'payment',
        
        # 
        :'bill_to' => :'billTo',
        
        # 
        :'ship_to' => :'shipTo',
        
        # 
        :'items' => :'items',
        
        # 
        :'_links' => :'_links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'String',
        :'status' => :'String',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'auth_code' => :'String',
        :'reference_id' => :'String',
        :'ignore_avs' => :'String',
        :'ignore_bad_cvn' => :'String',
        :'commerce_indicator' => :'String',
        :'vc_order_id' => :'String',
        :'payment_solution' => :'String',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'merchant_descriptor' => :'MerchantDescriptor',
        :'payment' => :'Payment',
        :'bill_to' => :'BillTo',
        :'ship_to' => :'ShipTo',
        :'items' => :'Array<Offer>',
        :'_links' => :'AuthorizationLinks'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'authCode']
        self.auth_code = attributes[:'authCode']
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'ignoreAvs']
        self.ignore_avs = attributes[:'ignoreAvs']
      end
      
      if attributes[:'ignoreBadCvn']
        self.ignore_bad_cvn = attributes[:'ignoreBadCvn']
      end
      
      if attributes[:'commerceIndicator']
        self.commerce_indicator = attributes[:'commerceIndicator']
      end
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
      end
      
      if attributes[:'merchantDefinedData']
        self.merchant_defined_data = attributes[:'merchantDefinedData']
      end
      
      if attributes[:'merchantDescriptor']
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end
      
      if attributes[:'payment']
        self.payment = attributes[:'payment']
      end
      
      if attributes[:'billTo']
        self.bill_to = attributes[:'billTo']
      end
      
      if attributes[:'shipTo']
        self.ship_to = attributes[:'shipTo']
      end
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
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

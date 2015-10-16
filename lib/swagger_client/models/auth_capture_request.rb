module SwaggerClient
  # 
  class AuthCaptureRequest < BaseObject
    attr_accessor :amount, :currency, :payment, :bill_to, :ship_to, :vc_order_id, :commerce_indicator, :ignore_avs, :ignore_bad_cvn, :reference_id, :payment_solution, :merchant_defined_data, :items, :merchant_descriptor
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Amount of the transaction
        :'amount' => :'amount',
        
        # Currency used for the transaction
        :'currency' => :'currency',
        
        # 
        :'payment' => :'payment',
        
        # 
        :'bill_to' => :'billTo',
        
        # 
        :'ship_to' => :'shipTo',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # Type of transaction. Some payment card companies use this information when determining discount rates.
        :'commerce_indicator' => :'commerceIndicator',
        
        # Setting to ignore Avs
        :'ignore_avs' => :'ignoreAvs',
        
        # Setting to ignore bad CVN
        :'ignore_bad_cvn' => :'ignoreBadCvn',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # 
        :'items' => :'items',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'currency' => :'String',
        :'payment' => :'Payment',
        :'bill_to' => :'BillTo',
        :'ship_to' => :'ShipTo',
        :'vc_order_id' => :'String',
        :'commerce_indicator' => :'String',
        :'ignore_avs' => :'String',
        :'ignore_bad_cvn' => :'String',
        :'reference_id' => :'String',
        :'payment_solution' => :'String',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'items' => :'Array<Offer>',
        :'merchant_descriptor' => :'MerchantDescriptor'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
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
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'commerceIndicator']
        self.commerce_indicator = attributes[:'commerceIndicator']
      end
      
      if attributes[:'ignoreAvs']
        self.ignore_avs = attributes[:'ignoreAvs']
      end
      
      if attributes[:'ignoreBadCvn']
        self.ignore_bad_cvn = attributes[:'ignoreBadCvn']
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
      end
      
      if attributes[:'merchantDefinedData']
        self.merchant_defined_data = attributes[:'merchantDefinedData']
      end
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'merchantDescriptor']
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end
      
    end

  end
end

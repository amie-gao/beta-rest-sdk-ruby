module CybsClient
  # 
  class Refund < BaseObject
    attr_accessor :id, :status, :amount, :currency, :reference_id, :vc_order_id, :payment_solution, :merchant_defined_data, :merchant_descriptor, :items
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The unique identifier for the refund
        :'id' => :'id',
        
        # Status of the refund
        :'status' => :'status',
        
        # The amount of the refund
        :'amount' => :'amount',
        
        # The currency of the refund amount
        :'currency' => :'currency',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor',
        
        # 
        :'items' => :'items'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'id' => :'String',
        :'status' => :'String',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'reference_id' => :'String',
        :'vc_order_id' => :'String',
        :'payment_solution' => :'String',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'merchant_descriptor' => :'MerchantDescriptor',
        :'items' => :'Array<Offer>'
        
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
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
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
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
    end

    def status=(status)
      allowed_values = ["PendingSettlement", "SettledSuccessfully"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end

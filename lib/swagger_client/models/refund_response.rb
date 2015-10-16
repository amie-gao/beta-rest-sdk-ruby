module SwaggerClient
  # 
  class RefundResponse < BaseObject
    attr_accessor :amount, :payment_solution, :_links, :vc_order_id, :currency, :merchant_defined_data, :id, :merchant_descriptor, :items, :reference_id, :status
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The amount of the refund
        :'amount' => :'amount',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'_links' => :'_links',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # The currency of the refund amount
        :'currency' => :'currency',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # The unique identifier for the refund
        :'id' => :'id',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor',
        
        # 
        :'items' => :'items',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Status of the refund
        :'status' => :'status'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'payment_solution' => :'String',
        :'_links' => :'SelfLink',
        :'vc_order_id' => :'String',
        :'currency' => :'String',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'id' => :'String',
        :'merchant_descriptor' => :'MerchantDescriptor',
        :'items' => :'Array<Offer>',
        :'reference_id' => :'String',
        :'status' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'merchantDefinedData']
        self.merchant_defined_data = attributes[:'merchantDefinedData']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'merchantDescriptor']
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
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

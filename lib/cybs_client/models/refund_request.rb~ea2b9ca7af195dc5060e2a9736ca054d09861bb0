module CybsClient
  # 
  class RefundRequest < BaseObject
    attr_accessor :amount, :currency, :reference_id, :vc_order_id, :merchant_defined_data, :payment_solution, :items, :merchant_descriptor
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The amount to refund
        :'amount' => :'amount',
        
        # The currency of the refund amount
        :'currency' => :'currency',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'items' => :'items',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'amount' => :'Float',
        :'currency' => :'String',
        :'reference_id' => :'String',
        :'vc_order_id' => :'String',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'payment_solution' => :'String',
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
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'merchantDefinedData']
        self.merchant_defined_data = attributes[:'merchantDefinedData']
      end
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
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

module CybsClient
  # 
  class CaptureRequest < BaseObject
    attr_accessor :amount, :currency, :reference_id, :vc_order_id, :bill_to, :ship_to, :payment_solution, :merchant_defined_data, :items, :merchant_descriptor
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Amount to capture for the transaction.
        :'amount' => :'amount',
        
        # Currency for the transaction.
        :'currency' => :'currency',
        
        # Merchant reference ID for the transaction.
        :'reference_id' => :'referenceId',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # 
        :'bill_to' => :'billTo',
        
        # 
        :'ship_to' => :'shipTo',
        
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
    def self.cybs_types
      {
        :'amount' => :'Float',
        :'currency' => :'String',
        :'reference_id' => :'String',
        :'vc_order_id' => :'String',
        :'bill_to' => :'BillTo',
        :'ship_to' => :'ShipTo',
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
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'vcOrderId']
        self.vc_order_id = attributes[:'vcOrderId']
      end
      
      if attributes[:'billTo']
        self.bill_to = attributes[:'billTo']
      end
      
      if attributes[:'shipTo']
        self.ship_to = attributes[:'shipTo']
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

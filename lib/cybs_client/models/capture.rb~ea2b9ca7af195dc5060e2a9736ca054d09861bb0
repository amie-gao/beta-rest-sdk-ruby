module CybsClient
  # 
  class Capture < BaseObject
    attr_accessor :id, :status, :amount, :currency, :reference_id, :vc_order_id, :payment_solution, :merchant_defined_data, :merchant_descriptor, :bill_to, :ship_to, :items
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the transaction
        :'id' => :'id',
        
        # Status of the capture
        :'status' => :'status',
        
        # Amount to capture from the authorization
        :'amount' => :'amount',
        
        # Currency used for the transaction
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
        :'bill_to' => :'billTo',
        
        # 
        :'ship_to' => :'shipTo',
        
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
        :'bill_to' => :'BillTo',
        :'ship_to' => :'ShipTo',
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
      
    end

    def status=(status)
      allowed_values = ["PendingSettlement", "SettledSuccessfully", "Voided"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end

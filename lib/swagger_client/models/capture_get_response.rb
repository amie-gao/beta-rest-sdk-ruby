module SwaggerClient
  # 
  class CaptureGetResponse < BaseObject
    attr_accessor :amount, :_links, :merchant_defined_data, :merchant_descriptor, :reference_id, :payment_solution, :bill_to, :vc_order_id, :currency, :id, :items, :status, :ship_to
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Amount to capture from the authorization
        :'amount' => :'amount',
        
        # 
        :'_links' => :'_links',
        
        # 
        :'merchant_defined_data' => :'merchantDefinedData',
        
        # 
        :'merchant_descriptor' => :'merchantDescriptor',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Type of payment solution that is being used for the transaction
        :'payment_solution' => :'paymentSolution',
        
        # 
        :'bill_to' => :'billTo',
        
        # Identifier for the Visa Checkout order. Obtain this value from the callIDfield from Visa Checkout
        :'vc_order_id' => :'vcOrderId',
        
        # Currency used for the transaction
        :'currency' => :'currency',
        
        # Unique identifier for the transaction
        :'id' => :'id',
        
        # 
        :'items' => :'items',
        
        # Status of the capture
        :'status' => :'status',
        
        # 
        :'ship_to' => :'shipTo'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'_links' => :'CapturePostLinks',
        :'merchant_defined_data' => :'MerchantDefinedData',
        :'merchant_descriptor' => :'MerchantDescriptor',
        :'reference_id' => :'String',
        :'payment_solution' => :'String',
        :'bill_to' => :'BillTo',
        :'vc_order_id' => :'String',
        :'currency' => :'String',
        :'id' => :'String',
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
      
      if attributes[:'paymentSolution']
        self.payment_solution = attributes[:'paymentSolution']
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
      
      if attributes[:'id']
        self.id = attributes[:'id']
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
      allowed_values = ["PendingSettlement", "SettledSuccessfully", "Voided"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end

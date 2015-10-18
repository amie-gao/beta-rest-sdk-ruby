module SwaggerClient
  # 
  class TransactionRequest < BaseObject
    attr_accessor :merchant_id, :reference_id, :type, :amount, :currency, :card_number, :card_expiration_month, :card_expiration_year, :bill_to
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Merchant identifier
        :'merchant_id' => :'merchantId',
        
        # Merchant reference ID for the transaction.
        :'reference_id' => :'referenceId',
        
        # Transaction type.  E.g. sale, auth, capture
        :'type' => :'type',
        
        # Total amount
        :'amount' => :'amount',
        
        # The currency used for the transaction
        :'currency' => :'currency',
        
        # Credit card number
        :'card_number' => :'cardNumber',
        
        # Two digit expiration month
        :'card_expiration_month' => :'cardExpirationMonth',
        
        # Four digit expiration year
        :'card_expiration_year' => :'cardExpirationYear',
        
        # 
        :'bill_to' => :'billTo'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'merchant_id' => :'String',
        :'reference_id' => :'String',
        :'type' => :'String',
        :'amount' => :'String',
        :'currency' => :'String',
        :'card_number' => :'String',
        :'card_expiration_month' => :'String',
        :'card_expiration_year' => :'String',
        :'bill_to' => :'BillTo'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'merchantId']
        self.merchant_id = attributes[:'merchantId']
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'cardNumber']
        self.card_number = attributes[:'cardNumber']
      end
      
      if attributes[:'cardExpirationMonth']
        self.card_expiration_month = attributes[:'cardExpirationMonth']
      end
      
      if attributes[:'cardExpirationYear']
        self.card_expiration_year = attributes[:'cardExpirationYear']
      end
      
      if attributes[:'billTo']
        self.bill_to = attributes[:'billTo']
      end
      
    end

  end
end

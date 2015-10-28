module CybsClient
  # 
  class SearchResult < BaseObject
    attr_accessor :id, :account_suffix, :first_name, :last_name, :amount, :currency, :status, :reference_id, :request_date_time, :merchant_timezone, :card_type, :_links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the transaction.
        :'id' => :'id',
        
        # Last four digits of the card number.
        :'account_suffix' => :'accountSuffix',
        
        # First name of the cardholder.
        :'first_name' => :'firstName',
        
        # Last name of the cardholder.
        :'last_name' => :'lastName',
        
        # Total amount of the transaction.
        :'amount' => :'amount',
        
        # The currency used for the transaction.
        :'currency' => :'currency',
        
        # Status of the transaction. E.g. PendingSettlement
        :'status' => :'status',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Time in UTC when the transaction was created.
        :'request_date_time' => :'requestDateTime',
        
        # Configured timezone for the merchant.
        :'merchant_timezone' => :'merchantTimezone',
        
        # Card type, e.g. Visa, Mastercard.
        :'card_type' => :'cardType',
        
        # 
        :'_links' => :'_links'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'id' => :'String',
        :'account_suffix' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'status' => :'String',
        :'reference_id' => :'String',
        :'request_date_time' => :'String',
        :'merchant_timezone' => :'String',
        :'card_type' => :'String',
        :'_links' => :'Links'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'accountSuffix']
        self.account_suffix = attributes[:'accountSuffix']
      end
      
      if attributes[:'firstName']
        self.first_name = attributes[:'firstName']
      end
      
      if attributes[:'lastName']
        self.last_name = attributes[:'lastName']
      end
      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
      if attributes[:'requestDateTime']
        self.request_date_time = attributes[:'requestDateTime']
      end
      
      if attributes[:'merchantTimezone']
        self.merchant_timezone = attributes[:'merchantTimezone']
      end
      
      if attributes[:'cardType']
        self.card_type = attributes[:'cardType']
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
    end

  end
end

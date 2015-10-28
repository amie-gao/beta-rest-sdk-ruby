module CybsClient
  # 
  class Transaction < BaseObject
    attr_accessor :id, :status, :amount, :currency, :reference_id, :create_date_time, :first_name, :last_name, :payment, :bill_to, :ship_to
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unique identifier for the transaction.
        :'id' => :'id',
        
        # Status of the transaction. E.g. PendingSettlement
        :'status' => :'status',
        
        # Total amount
        :'amount' => :'amount',
        
        # The currency used for the transaction
        :'currency' => :'currency',
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId',
        
        # Time in UTC when the transaction was created.
        :'create_date_time' => :'createDateTime',
        
        # First name
        :'first_name' => :'firstName',
        
        # Last name
        :'last_name' => :'lastName',
        
        # 
        :'payment' => :'payment',
        
        # 
        :'bill_to' => :'billTo',
        
        # 
        :'ship_to' => :'shipTo'
        
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
        :'create_date_time' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'payment' => :'Payment',
        :'bill_to' => :'BillTo',
        :'ship_to' => :'ShipTo'
        
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
      
      if attributes[:'createDateTime']
        self.create_date_time = attributes[:'createDateTime']
      end
      
      if attributes[:'firstName']
        self.first_name = attributes[:'firstName']
      end
      
      if attributes[:'lastName']
        self.last_name = attributes[:'lastName']
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
      
    end

  end
end

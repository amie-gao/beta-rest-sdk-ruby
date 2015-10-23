module CybsClient
  # 
  class Void < BaseObject
    attr_accessor :id, :status, :amount, :currency, :reference_id, :_links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of the voided transaction
        :'id' => :'id',
        
        # Status of the void
        :'status' => :'status',
        
        # Amount to void
        :'amount' => :'amount',
        
        # Currency of the amount to void
        :'currency' => :'currency',
        
        # merchant provided reference id of the voided transaction
        :'reference_id' => :'referenceId',
        
        # 
        :'_links' => :'_links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'String',
        :'status' => :'String',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'reference_id' => :'String',
        :'_links' => :'SelfLink'
        
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
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
    end

    def status=(status)
      allowed_values = ["Voided"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end


end

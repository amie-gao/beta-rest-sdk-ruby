module CybsClient
  # 
  class ResponseStatus < BaseObject
    attr_accessor :status, :reason, :message, :correlation_id, :details
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # HTTP Status code
        :'status' => :'status',
        
        # Error Reason Code
        :'reason' => :'reason',
        
        # Error Message
        :'message' => :'message',
        
        # API Correlation ID
        :'correlation_id' => :'correlationId',
        
        # 
        :'details' => :'details'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'status' => :'Float',
        :'reason' => :'String',
        :'message' => :'String',
        :'correlation_id' => :'String',
        :'details' => :'Array<ResponseStatusDetails>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'reason']
        self.reason = attributes[:'reason']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'correlationId']
        self.correlation_id = attributes[:'correlationId']
      end
      
      if attributes[:'details']
        if (value = attributes[:'details']).is_a?(Array)
          self.details = value
        end
      end
      
    end

  end
end

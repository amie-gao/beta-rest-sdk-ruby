module CybsClient
  # 
  class Links < BaseObject
    attr_accessor :_self, :receipt, :refund, :documentation, :_next
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_self' => :'self',
        
        # 
        :'receipt' => :'receipt',
        
        # 
        :'refund' => :'refund',
        
        # 
        :'documentation' => :'documentation',
        
        # 
        :'_next' => :'next'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_self' => :'Link',
        :'receipt' => :'Link',
        :'refund' => :'Link',
        :'documentation' => :'Link',
        :'_next' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'self']
        self._self = attributes[:'self']
      end
      
      if attributes[:'receipt']
        self.receipt = attributes[:'receipt']
      end
      
      if attributes[:'refund']
        self.refund = attributes[:'refund']
      end
      
      if attributes[:'documentation']
        self.documentation = attributes[:'documentation']
      end
      
      if attributes[:'next']
        self._next = attributes[:'next']
      end
      
    end

  end


end

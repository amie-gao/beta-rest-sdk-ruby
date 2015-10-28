module CybsClient
  # 
  class CreditPostLinks < BaseObject
    attr_accessor :_self, :void
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_self' => :'self',
        
        # 
        :'void' => :'void'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'_self' => :'Link',
        :'void' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'self']
        self._self = attributes[:'self']
      end
      
      if attributes[:'void']
        self.void = attributes[:'void']
      end
      
    end

  end
end

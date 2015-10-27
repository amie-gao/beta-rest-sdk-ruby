module CybsClient
  # 
  class SelfLink < BaseObject
    attr_accessor :_self
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_self' => :'self'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'_self' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'self']
        self._self = attributes[:'self']
      end
      
    end

  end
end

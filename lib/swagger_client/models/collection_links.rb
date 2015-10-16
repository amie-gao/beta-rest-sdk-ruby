module SwaggerClient
  # 
  class CollectionLinks < BaseObject
    attr_accessor :_self, :_next
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_self' => :'self',
        
        # 
        :'_next' => :'next'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_self' => :'Link',
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
      
      if attributes[:'next']
        self._next = attributes[:'next']
      end
      
    end

  end
end

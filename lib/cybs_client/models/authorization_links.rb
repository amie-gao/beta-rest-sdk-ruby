module CybsClient
  # 
  class AuthorizationLinks < BaseObject
    attr_accessor :_self, :auth_reversal, :capture
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_self' => :'self',
        
        # 
        :'auth_reversal' => :'authReversal',
        
        # 
        :'capture' => :'capture'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_self' => :'Link',
        :'auth_reversal' => :'Link',
        :'capture' => :'Link'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'self']
        self._self = attributes[:'self']
      end
      
      if attributes[:'authReversal']
        self.auth_reversal = attributes[:'authReversal']
      end
      
      if attributes[:'capture']
        self.capture = attributes[:'capture']
      end
      
    end

  end


end

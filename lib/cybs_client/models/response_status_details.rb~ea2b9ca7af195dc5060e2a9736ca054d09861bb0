module CybsClient
  # 
  class ResponseStatusDetails < BaseObject
    attr_accessor :location, :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Field name referred to for validation issues.
        :'location' => :'location',
        
        # Description or code of any error response.
        :'message' => :'message'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'location' => :'String',
        :'message' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'location']
        self.location = attributes[:'location']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
    end

  end
end

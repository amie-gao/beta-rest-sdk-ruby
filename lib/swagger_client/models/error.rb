module SwaggerClient
  # 
  class Error < BaseObject
    attr_accessor :response_status, :_links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'response_status' => :'responseStatus',
        
        # 
        :'_links' => :'_links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'response_status' => :'ResponseStatus',
        :'_links' => :'Links'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'responseStatus']
        self.response_status = attributes[:'responseStatus']
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
    end

  end
end

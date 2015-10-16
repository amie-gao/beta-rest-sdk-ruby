module SwaggerClient
  # 
  class TransactionSearch < BaseObject
    attr_accessor :results, :_links
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'results' => :'results',
        
        # 
        :'_links' => :'_links'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'results' => :'Array<SearchResult>',
        :'_links' => :'Links'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'results']
        if (value = attributes[:'results']).is_a?(Array)
          self.results = value
        end
      end
      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
    end

  end
end

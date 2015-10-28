module CybsClient
  # 
  class AuthorizationCollection < BaseObject
    attr_accessor :_links, :_embedded
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'_links' => :'_links',
        
        # 
        :'_embedded' => :'_embedded'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'_links' => :'CollectionLinks',
        :'_embedded' => :'ListAuthorization'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'_links']
        self._links = attributes[:'_links']
      end
      
      if attributes[:'_embedded']
        self._embedded = attributes[:'_embedded']
      end
      
    end

  end
end

module CybsClient
  # 
  class Link < BaseObject
    attr_accessor :href, :name, :title, :method
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # URI of the linked resource
        :'href' => :'href',
        
        # Name of the linked resource
        :'name' => :'name',
        
        # Label of the linked resource
        :'title' => :'title',
        
        # HTTP method of the linked resource
        :'method' => :'method'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'href' => :'String',
        :'name' => :'String',
        :'title' => :'String',
        :'method' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'href']
        self.href = attributes[:'href']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'title']
        self.title = attributes[:'title']
      end
      
      if attributes[:'method']
        self.method = attributes[:'method']
      end
      
    end

  end


end

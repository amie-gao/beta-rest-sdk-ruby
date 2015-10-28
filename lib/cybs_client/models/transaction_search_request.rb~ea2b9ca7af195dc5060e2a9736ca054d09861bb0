module CybsClient
  # 
  class TransactionSearchRequest < BaseObject
    attr_accessor :query, :offset, :limit
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Query string to search for transactions.
        :'query' => :'query',
        
        # This paging parameter is used to specify the page number.
        :'offset' => :'offset',
        
        # This paging parameter is used to specify the page size, i.e. number of records.
        :'limit' => :'limit'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'query' => :'String',
        :'offset' => :'Integer',
        :'limit' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'query']
        self.query = attributes[:'query']
      end
      
      if attributes[:'offset']
        self.offset = attributes[:'offset']
      end
      
      if attributes[:'limit']
        self.limit = attributes[:'limit']
      end
      
    end

  end
end

module CybsClient
  # 
  class VoidRequest < BaseObject
    attr_accessor :reference_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Merchant reference ID for the transaction
        :'reference_id' => :'referenceId'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'reference_id' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'referenceId']
        self.reference_id = attributes[:'referenceId']
      end
      
    end

  end
end

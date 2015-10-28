module CybsClient
  # 
  class MerchantDescriptor < BaseObject
    attr_accessor :primary, :alternate, :city, :contact, :country, :postal_code, :state, :street
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Merchant description that is displayed on the cardholders statement
        :'primary' => :'primary',
        
        # Alternate merchant contact information.
        :'alternate' => :'alternate',
        
        # Merchant city that is displayed on the cardholders statement.
        :'city' => :'city',
        
        # Merchant contact information, such as a phone number  that is displayed on the cardholders statement.
        :'contact' => :'contact',
        
        # Merchant country that is displayed on the cardholders statement.
        :'country' => :'country',
        
        # Merchant postal code that is displayed on the cardholders statement
        :'postal_code' => :'postalCode',
        
        # Merchant state that is displayed on the cardholders statement.
        :'state' => :'state',
        
        # Merchant street address that is displayed on the cardholders statement.
        :'street' => :'street'
        
      }
    end

    # attribute type
    def self.cybs_types
      {
        :'primary' => :'String',
        :'alternate' => :'String',
        :'city' => :'String',
        :'contact' => :'String',
        :'country' => :'String',
        :'postal_code' => :'String',
        :'state' => :'String',
        :'street' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'primary']
        self.primary = attributes[:'primary']
      end
      
      if attributes[:'alternate']
        self.alternate = attributes[:'alternate']
      end
      
      if attributes[:'city']
        self.city = attributes[:'city']
      end
      
      if attributes[:'contact']
        self.contact = attributes[:'contact']
      end
      
      if attributes[:'country']
        self.country = attributes[:'country']
      end
      
      if attributes[:'postalCode']
        self.postal_code = attributes[:'postalCode']
      end
      
      if attributes[:'state']
        self.state = attributes[:'state']
      end
      
      if attributes[:'street']
        self.street = attributes[:'street']
      end
      
    end

  end
end

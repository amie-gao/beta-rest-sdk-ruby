module SwaggerClient
  # 
  class ShipTo < BaseObject
    attr_accessor :first_name, :last_name, :street1, :street2, :city, :state, :postal_code, :country, :phone, :shipping_method
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # First name
        :'first_name' => :'firstName',
        
        # Last name
        :'last_name' => :'lastName',
        
        # Street address
        :'street1' => :'street1',
        
        # Street address 2
        :'street2' => :'street2',
        
        # City
        :'city' => :'city',
        
        # State
        :'state' => :'state',
        
        # Postal code
        :'postal_code' => :'postalCode',
        
        # Country
        :'country' => :'country',
        
        # Phone Number
        :'phone' => :'phone',
        
        # Shipping method for the product
        :'shipping_method' => :'shippingMethod'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'street1' => :'String',
        :'street2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'phone' => :'String',
        :'shipping_method' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'firstName']
        self.first_name = attributes[:'firstName']
      end
      
      if attributes[:'lastName']
        self.last_name = attributes[:'lastName']
      end
      
      if attributes[:'street1']
        self.street1 = attributes[:'street1']
      end
      
      if attributes[:'street2']
        self.street2 = attributes[:'street2']
      end
      
      if attributes[:'city']
        self.city = attributes[:'city']
      end
      
      if attributes[:'state']
        self.state = attributes[:'state']
      end
      
      if attributes[:'postalCode']
        self.postal_code = attributes[:'postalCode']
      end
      
      if attributes[:'country']
        self.country = attributes[:'country']
      end
      
      if attributes[:'phone']
        self.phone = attributes[:'phone']
      end
      
      if attributes[:'shippingMethod']
        self.shipping_method = attributes[:'shippingMethod']
      end
      
    end

  end
end

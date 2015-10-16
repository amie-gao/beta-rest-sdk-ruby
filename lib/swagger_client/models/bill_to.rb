module SwaggerClient
  # 
  class BillTo < BaseObject
    attr_accessor :title, :first_name, :middle_name, :last_name, :suffix, :building_number, :street1, :street2, :city, :county, :district, :state, :postal_code, :country, :company, :phone_number, :email, :ip_address
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'title' => :'title',
        
        # First name
        :'first_name' => :'firstName',
        
        # Middle name
        :'middle_name' => :'middleName',
        
        # Last name
        :'last_name' => :'lastName',
        
        # 
        :'suffix' => :'suffix',
        
        # Building number in street address
        :'building_number' => :'buildingNumber',
        
        # Street address
        :'street1' => :'street1',
        
        # Street address 2
        :'street2' => :'street2',
        
        # City
        :'city' => :'city',
        
        # County
        :'county' => :'county',
        
        # District
        :'district' => :'district',
        
        # State
        :'state' => :'state',
        
        # Postal code
        :'postal_code' => :'postalCode',
        
        # Country
        :'country' => :'country',
        
        # Company
        :'company' => :'company',
        
        # Phone Number
        :'phone_number' => :'phoneNumber',
        
        # Email address
        :'email' => :'email',
        
        # IP address of the customer
        :'ip_address' => :'ipAddress'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'title' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'suffix' => :'String',
        :'building_number' => :'String',
        :'street1' => :'String',
        :'street2' => :'String',
        :'city' => :'String',
        :'county' => :'String',
        :'district' => :'String',
        :'state' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'company' => :'String',
        :'phone_number' => :'String',
        :'email' => :'String',
        :'ip_address' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'title']
        self.title = attributes[:'title']
      end
      
      if attributes[:'firstName']
        self.first_name = attributes[:'firstName']
      end
      
      if attributes[:'middleName']
        self.middle_name = attributes[:'middleName']
      end
      
      if attributes[:'lastName']
        self.last_name = attributes[:'lastName']
      end
      
      if attributes[:'suffix']
        self.suffix = attributes[:'suffix']
      end
      
      if attributes[:'buildingNumber']
        self.building_number = attributes[:'buildingNumber']
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
      
      if attributes[:'county']
        self.county = attributes[:'county']
      end
      
      if attributes[:'district']
        self.district = attributes[:'district']
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
      
      if attributes[:'company']
        self.company = attributes[:'company']
      end
      
      if attributes[:'phoneNumber']
        self.phone_number = attributes[:'phoneNumber']
      end
      
      if attributes[:'email']
        self.email = attributes[:'email']
      end
      
      if attributes[:'ipAddress']
        self.ip_address = attributes[:'ipAddress']
      end
      
    end

  end
end

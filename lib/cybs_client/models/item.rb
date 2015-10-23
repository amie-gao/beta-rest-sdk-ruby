module CybsClient
  # 
  class Item < BaseObject
    attr_accessor :product_code, :quantity, :product_sku, :product_name, :product_type, :unit_price, :tax_amount, :currency
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Type of product. This value is used to determine the category that the product is in: electronic, handling, physical, service, or shipping.
        :'product_code' => :'productCode',
        
        # The default is 1.  This field is required when product_code is not default or one of the values related to shipping and handling
        :'quantity' => :'quantity',
        
        # Identification code for the product.
        :'product_sku' => :'productSKU',
        
        # This field is required when product_code is not default or one of the values related to shipping and handling
        :'product_name' => :'productName',
        
        # 
        :'product_type' => :'productType',
        
        # Per-item price of the product. This value cannot be negative. You can include a decimal point (.), but you cannot include any other special characters
        :'unit_price' => :'unitPrice',
        
        #  Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. 
        :'tax_amount' => :'taxAmount',
        
        # Per-item currency
        :'currency' => :'currency'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'product_code' => :'String',
        :'quantity' => :'String',
        :'product_sku' => :'String',
        :'product_name' => :'String',
        :'product_type' => :'String',
        :'unit_price' => :'Float',
        :'tax_amount' => :'Float',
        :'currency' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'productCode']
        self.product_code = attributes[:'productCode']
      end
      
      if attributes[:'quantity']
        self.quantity = attributes[:'quantity']
      end
      
      if attributes[:'productSKU']
        self.product_sku = attributes[:'productSKU']
      end
      
      if attributes[:'productName']
        self.product_name = attributes[:'productName']
      end
      
      if attributes[:'productType']
        self.product_type = attributes[:'productType']
      end
      
      if attributes[:'unitPrice']
        self.unit_price = attributes[:'unitPrice']
      end
      
      if attributes[:'taxAmount']
        self.tax_amount = attributes[:'taxAmount']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
    end

  end


end

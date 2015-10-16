module SwaggerClient
  # 
  class Offer < BaseObject
    attr_accessor :product_sku, :quantity, :unit_price, :tax_amount
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Product SKU
        :'product_sku' => :'productSKU',
        
        # Quantity.
        :'quantity' => :'quantity',
        
        # Unit Price.
        :'unit_price' => :'unitPrice',
        
        # Tax Amount.
        :'tax_amount' => :'taxAmount'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'product_sku' => :'String',
        :'quantity' => :'String',
        :'unit_price' => :'String',
        :'tax_amount' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'productSKU']
        self.product_sku = attributes[:'productSKU']
      end
      
      if attributes[:'quantity']
        self.quantity = attributes[:'quantity']
      end
      
      if attributes[:'unitPrice']
        self.unit_price = attributes[:'unitPrice']
      end
      
      if attributes[:'taxAmount']
        self.tax_amount = attributes[:'taxAmount']
      end
      
    end

  end
end

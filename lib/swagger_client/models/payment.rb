module SwaggerClient
  # 
  class Payment < BaseObject
    attr_accessor :card_number, :card_expiration_month, :card_expiration_year, :card_type, :card_verification_indicator, :cvn, :encrypted_data, :encrypted_descriptor, :encrypted_encoding, :encrypted_key, :cavv, :xid, :ucaf_authentication_data, :ucaf_collection_indicator, :network_token_transaction_type, :network_token_requestor_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Credit card number
        :'card_number' => :'cardNumber',
        
        # Two digit expiration month
        :'card_expiration_month' => :'cardExpirationMonth',
        
        # Four digit expiration year
        :'card_expiration_year' => :'cardExpirationYear',
        
        # Card Type
        :'card_type' => :'cardType',
        
        # Flag that indicates whether a CVN code was sent
        :'card_verification_indicator' => :'cardVerificationIndicator',
        
        # Card Verification Number
        :'cvn' => :'cvn',
        
        # Encrypted Payment Data
        :'encrypted_data' => :'encryptedData',
        
        # Format of the encrypted payment data
        :'encrypted_descriptor' => :'encryptedDescriptor',
        
        # Encoding method used to encrypt the payment data
        :'encrypted_encoding' => :'encryptedEncoding',
        
        # Encrypted key that CyberSource uses to decrypt the payment data
        :'encrypted_key' => :'encryptedKey',
        
        # Cryptogram for payment network tokenization transactions. The value for this field must be 28-character base64 or 40-character hex binary
        :'cavv' => :'cavv',
        
        # Cryptogram for payment network tokenization transactions
        :'xid' => :'xid',
        
        # Cryptogram for payment network tokenization transactions with MasterCard.
        :'ucaf_authentication_data' => :'ucafAuthenticationData',
        
        # Required field for payment network tokenization transactions with MasterCard
        :'ucaf_collection_indicator' => :'ucafCollectionIndicator',
        
        # Type of transaction that provided the token data
        :'network_token_transaction_type' => :'networkTokenTransactionType',
        
        # Value that identifies your business and indicates that the cardholder’s account number is tokenized
        :'network_token_requestor_id' => :'networkTokenRequestorId'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'card_number' => :'String',
        :'card_expiration_month' => :'String',
        :'card_expiration_year' => :'String',
        :'card_type' => :'String',
        :'card_verification_indicator' => :'String',
        :'cvn' => :'String',
        :'encrypted_data' => :'String',
        :'encrypted_descriptor' => :'String',
        :'encrypted_encoding' => :'String',
        :'encrypted_key' => :'String',
        :'cavv' => :'String',
        :'xid' => :'String',
        :'ucaf_authentication_data' => :'String',
        :'ucaf_collection_indicator' => :'String',
        :'network_token_transaction_type' => :'String',
        :'network_token_requestor_id' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'cardNumber']
        self.card_number = attributes[:'cardNumber']
      end
      
      if attributes[:'cardExpirationMonth']
        self.card_expiration_month = attributes[:'cardExpirationMonth']
      end
      
      if attributes[:'cardExpirationYear']
        self.card_expiration_year = attributes[:'cardExpirationYear']
      end
      
      if attributes[:'cardType']
        self.card_type = attributes[:'cardType']
      end
      
      if attributes[:'cardVerificationIndicator']
        self.card_verification_indicator = attributes[:'cardVerificationIndicator']
      end
      
      if attributes[:'cvn']
        self.cvn = attributes[:'cvn']
      end
      
      if attributes[:'encryptedData']
        self.encrypted_data = attributes[:'encryptedData']
      end
      
      if attributes[:'encryptedDescriptor']
        self.encrypted_descriptor = attributes[:'encryptedDescriptor']
      end
      
      if attributes[:'encryptedEncoding']
        self.encrypted_encoding = attributes[:'encryptedEncoding']
      end
      
      if attributes[:'encryptedKey']
        self.encrypted_key = attributes[:'encryptedKey']
      end
      
      if attributes[:'cavv']
        self.cavv = attributes[:'cavv']
      end
      
      if attributes[:'xid']
        self.xid = attributes[:'xid']
      end
      
      if attributes[:'ucafAuthenticationData']
        self.ucaf_authentication_data = attributes[:'ucafAuthenticationData']
      end
      
      if attributes[:'ucafCollectionIndicator']
        self.ucaf_collection_indicator = attributes[:'ucafCollectionIndicator']
      end
      
      if attributes[:'networkTokenTransactionType']
        self.network_token_transaction_type = attributes[:'networkTokenTransactionType']
      end
      
      if attributes[:'networkTokenRequestorId']
        self.network_token_requestor_id = attributes[:'networkTokenRequestorId']
      end
      
    end

  end
end

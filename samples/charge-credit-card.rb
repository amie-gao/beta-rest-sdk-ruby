require 'cybs_client'


auth_request = {
      "amount" => "0",
      "currency" => "USD",
      "payment" => {
      "cardNumber" => "4111111111111111",
      "cardExpirationMonth" => "10",
      "cardExpirationYear" =>  "2016"
      }
  }

CybsClient::AuthorizationsApi.authorize_payment(auth_request)




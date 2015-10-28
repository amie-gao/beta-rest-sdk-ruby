require 'cybs_client'

auth_request = {
      "amount" => "5.00",
      "currency" => "USD",
      "payment" => {
      "cardNumber" => "4111111111111111",
      "cardExpirationMonth" => "10",
      "cardExpirationYear" =>  "2016"
      }
  }
CybsClient::Cybs.configure do |config|
  config.api_key = ''
  config.secret_key = ''
end

sale = CybsClient::SalesApi.sale(auth_request)
puts 'the id of the sale you just made: ' + sale.id


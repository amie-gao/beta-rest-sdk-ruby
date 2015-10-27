module CybsClient
  module Cybs
    class << self
      attr_accessor :logger

      # A Cybs configuration object. Must act like a hash and return sensible
      # values for all Cybs configuration options. See Cybs::Configuration.
      attr_accessor :configuration

      attr_accessor :resources

      # Call this method to modify defaults in your initializers.
      #
      # @example
      #   Cybs.configure do |config|
      #     config.api_key['api_key'] = '1234567890abcdef'     # api key authentication
      #     config.username = 'wordlover'           # http basic authentication
      #     config.password = 'i<3words'            # http basic authentication
      #     config.format = 'json'                  # optional, defaults to 'json'
      #   end
      #
      def configure
        yield(configuration) if block_given?

        self.logger = configuration.logger

        # remove :// from scheme
        configuration.scheme.sub!(/:\/\//, '')

        # remove http(s):// and anything after a slash
        configuration.host.sub!(/https?:\/\//, '')

        # Add leading and trailing slashes to base_path
        configuration.base_path = "" if configuration.base_path == "/"
      end

      def last_response
        Thread.current[:cybs_last_response]
      end

      def last_response=(response)
        Thread.current[:cybs_last_response] = response
      end
    end
  end
end

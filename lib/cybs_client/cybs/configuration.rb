require 'logger'

module CybsClient
  module Cybs
    class Configuration
      attr_accessor :scheme, :host, :base_path, :user_agent, :format, :auth_token, :inject_format, :force_ending_format

      # Defines the API key for authentication
      #
      # @return [String]
      attr_accessor :api_key

      # Defines the secret key for authentication
      #
      # @return [String]
      attr_accessor :secret_key

      # Set this to false to skip verifying SSL certificate when calling API from https server.
      # Default to true.
      #
      # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
      #
      # @return [true, false]
      attr_accessor :verify_ssl

      # Set this to customize the certificate file to verify the peer.
      #
      # @return [String] the path to the certificate file
      #
      # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
      # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
      attr_accessor :ssl_ca_cert

      # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
      # details will be logged with `logger.debug` (see the `logger` attribute).
      # Default to false.
      #
      # @return [true, false]
      attr_accessor :debug

      # Defines the logger used for debugging.
      # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
      #
      # @return [#debug]
      attr_accessor :logger

      # Defines the temporary folder to store downloaded files
      # (for API endpoints that have file response).
      # Default to use `Tempfile`.
      #
      # @return [String]
      attr_accessor :temp_folder_path

      # Defines the headers to be used in HTTP requests of all API calls by default.
      #
      # @return [Hash]
      attr_accessor :default_headers

      # Defaults go in here..
      def initialize
        @format = 'json'
        @scheme = 'https'
        @host = 'sandbox.api.visa.com/cybersource'
        @base_path = '/'
        @user_agent = "beta-sdk-ruby-#{Cybs::VERSION}"
        @inject_format = false
        @force_ending_format = false

        @default_headers = {
          'Content-Type' => "application/#{@format.downcase}",
          'User-Agent' => @user_agent
        }

        @api_key = ''
        @secret_key = ''

        @verify_ssl = true

        @debug = false
        @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      end
    end
  end
end

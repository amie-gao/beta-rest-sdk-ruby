require 'uri'
require 'typhoeus'

module CybsClient
  module Cybs
    class Request
      attr_accessor :host, :path, :format, :params, :body, :http_method, :headers, :form_params, :auth_names, :response

      # All requests must have an HTTP method and a path
      # Optionals parameters are :params, :headers, :body, :format, :host
      def initialize(http_method, path, attributes = {})
        @http_method = http_method.to_sym.downcase
        @path = path

        attributes.each { |name, value| send "#{name}=", value }

        @format ||= Cybs.configuration.format
        @params ||= {}
        @params[:apiKey] = Cybs.configuration.api_key
        query_string = 'apiKey=' + Cybs.configuration.api_key

        # Apply default headers
        @headers = Cybs.configuration.default_headers.merge(@headers || {})
        headers['x-pay-token'] = get_xpay_token(path, query_string, body)

      end

      # Construct the request URL.
      def url(options = {})
        _path = self.interpreted_path
        _path = "/#{_path}" unless _path.start_with?('/')
        "#{Cybs.configuration.scheme}://#{Cybs.configuration.host}#{_path}"
      end

      # Iterate over the params hash, injecting any path values into the path string
      # e.g. /word.{format}/{word}/entries => /word.json/cat/entries
      def interpreted_path
        p = self.path.dup

        # Stick a .{format} placeholder into the path if there isn't
        # one already or an actual format like json or xml
        # e.g. /words/blah => /words.{format}/blah
        if Cybs.configuration.inject_format
          unless ['.json', '.xml', '{format}'].any? {|s| p.downcase.include? s }
            p = p.sub(/^(\/?\w+)/, "\\1.#{format}")
          end
        end

        # Stick a .{format} placeholder on the end of the path if there isn't
        # one already or an actual format like json or xml
        # e.g. /words/blah => /words/blah.{format}
        if Cybs.configuration.force_ending_format
          unless ['.json', '.xml', '{format}'].any? {|s| p.downcase.include? s }
            p = "#{p}.#{format}"
          end
        end

        p = p.sub("{format}", self.format.to_s)

        URI.encode [Cybs.configuration.base_path, p].join("/").gsub(/\/+/, '/')
      end

      # If body is an object, JSONify it before making the actual request.
      # For form parameters, remove empty value
      def outgoing_body
        # http form
        if headers['Content-Type'] == 'application/x-www-form-urlencoded'
          data = form_params.dup
          data.each do |key, value|
            data[key] = value.to_s if value && !value.is_a?(File) # remove emtpy form parameter
          end
        elsif @body # http body is JSON
          data = @body.is_a?(String) ? @body : @body.to_json
        else
          data = nil
        end

        if Cybs.configuration.debug
          Cybs.logger.debug "HTTP request body param ~BEGIN~\n#{data}\n~END~\n"
        end

        data
      end

      def make
        request_options = {
          :method => self.http_method,
          :headers => self.headers,
          :params => self.params,
          :ssl_verifypeer => Cybs.configuration.verify_ssl,
          :cainfo => Cybs.configuration.ssl_ca_cert,
          :verbose => Cybs.configuration.debug
        }

        if [:post, :patch, :put, :delete].include?(self.http_method)
          request_options.update :body => self.outgoing_body
        end

        raw = Typhoeus::Request.new(self.url, request_options).run
        @response = Response.new(raw)

        if Cybs.configuration.debug
          Cybs.logger.debug "HTTP response body ~BEGIN~\n#{@response.body}\n~END~\n"
        end

        # record as last response
        Cybs.last_response = @response

        unless @response.success?
          fail ApiError.new(:code => @response.code,
                            :response_headers => @response.headers,
                            :response_body => @response.body),
               @response.status_message
        end

        @response
      end

      def response_code_pretty
        return unless @response
        @response.code.to_s
      end

      def response_headers_pretty
        return unless @response
        # JSON.pretty_generate(@response.headers).gsub(/\n/, '<br/>') # <- This was for RestClient
        @response.headers.gsub(/\n/, '<br/>') # <- This is for Typhoeus
      end

      # return 'Accept' based on an array of accept provided
      # @param [Array] header_accept_array Array fo 'Accept'
      # @return String Accept (e.g. application/json)
      def self.select_header_accept header_accept_array
        if header_accept_array.empty?
          return
        elsif header_accept_array.any?{ |s| s.casecmp('application/json')==0 }
          'application/json' # look for json data by default
        else
          header_accept_array.join(',')
        end
      end

      # return the content type based on an array of content-type provided
      # @param [Array] content_type_array Array fo content-type
      # @return String Content-Type (e.g. application/json)
      def self.select_header_content_type content_type_array
        if content_type_array.empty?
          'application/json' # use application/json by default
        elsif content_type_array.any?{ |s| s.casecmp('application/json')==0 }
          'application/json' # use application/json if it's included
        else
          content_type_array[0]; # otherwise, use the first one
        end
      end

      # static method to convert object (array, hash, object, etc) to JSON string
      # @param model object to be converted into JSON string
      # @return string JSON string representation of the object
      def self.object_to_http_body model
        return if model.nil?
        _body = nil
        if model.is_a?(Array)
          _body = model.map{|m| object_to_hash(m) }
        else
          _body = object_to_hash(model)
        end
        _body.to_json
      end

      # static method to convert object(non-array) to hash
      # @param obj object to be converted into JSON string
      # @return string JSON string representation of the object
      def self.object_to_hash obj
        if obj.respond_to?(:to_hash)
          obj.to_hash
        else
          obj
        end
      end

      def get_xpay_token(resource_path, query_string, request_body)
        require 'digest'
        timestamp = Time.now.getutc.to_i.to_s
        hash_input = Cybs.configuration.secret_key + timestamp + resource_path + query_string + request_body
        hash_output = Digest::SHA256.hexdigest(hash_input)
        return "x:" + timestamp + ":" + hash_output
      end

    end
  end
end

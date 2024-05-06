module DwollaSwagger
  module Swagger
    class Response
      require 'json'

      attr_accessor :raw

      def initialize(raw)
        self.raw = raw

        case self.code
        when 500..510 then raise(ServerError, "#{self.error_message} #{self.body} #{self.headers}")
        when 299..426 then raise(ClientError.new(body), self.error_message)
        end
      end

      def code
        raw.status
      end

      # Account for error messages that take different forms...
      def error_message
        body['message']
      rescue
        body
      end

      # If body is JSON, parse it
      # Otherwise return raw string
      def body
        JSON.parse(raw.body, :symbolize_names => true)
      rescue
        raw.body
      end

      def headers
        raw.headers
      end

      # Extract the response format from the header hash
      # e.g. {'Content-Type' => 'application/json'}
      def format
        headers['Content-Type'].split(";").first.split("/").last.downcase
      end

      def json?
        format == 'json'
      end

      def xml?
        format == 'xml'
      end

      def pretty_body
        return unless body.present?
        case format
        when 'json' then JSON.pretty_generate(body).gsub(/\n/, '<br/>')
        end
      end

      def pretty_headers
        JSON.pretty_generate(headers).gsub(/\n/, '<br/>')
      end
    end
  end
end

require 'json'
require_relative 'MBBaseClient'

module BankAccountValidationPlan
  module APIClients
    class ABAAcctVerificationClient
      API_NAME = "ABAAcctVerification".freeze

      def initialize(authorization, base_url)
        @client = MBBaseClient.new(authorization, base_url)
      end

      def post(json_request_model)
        url = File.join(@client.base_url.to_s, API_NAME)
        response = @client.post(url, JSON.parse(json_request_model))
        JSON.parse(response.to_json)
      end
    end
  end
end
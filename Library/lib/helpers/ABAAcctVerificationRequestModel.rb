require 'json'

class ABAAcctVerificationRequestModel
  attr_accessor :bank_routing_number, :bank_account_number

  def initialize(bank_routing_number, bank_account_number)
    @bank_routing_number = bank_routing_number
    @bank_account_number = bank_account_number
  end

  def to_json(*_args)
    { bank_routing_number: @bank_routing_number, bank_account_number: @bank_account_number }.to_json
  end
end
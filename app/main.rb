require 'library'
require_relative '../Library/lib/BankAccountValidationPlanClient'
require_relative '../Library/lib/helpers/EnvironmentType'
require_relative '../Library/lib/helpers/ABAAcctVerificationRequestModel'
require_relative '../Library/lib/clients/ABAAcctVerificationClient'


bank_account_validation_plan_client = BankAccountValidationPlan::BankAccountValidationPlanClient.new(
  "You_client_id",
  "You_client_secret",
  EnvironmentType::Sandbox
)

puts "Test ABAAcctVerification Post:"

aba_acct_verification_request_model = {
  bank_routing_number: "011103093",
  bank_account_number: "9942192099"
}.to_json

aba_acct_verification_post = bank_account_validation_plan_client.aba_acct_verification_client.post(aba_acct_verification_request_model)

puts aba_acct_verification_post.to_s
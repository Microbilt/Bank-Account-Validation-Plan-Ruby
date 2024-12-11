# Bank Account Validation Plan Client

A Ruby client for consuming the Microbilt Bank Account Validation API.

API page - https://developer.microbilt.com/api/ABAAcctVerification

# Installation

`composer require Microbilt/Bank-Account-Validation-Plan-Ruby`

# Quick Start

```
bank_account_validation_plan_client = BankAccountValidationPlan::BankAccountValidationPlanClient.new(
  "You_client_id",
  "You_client_secret",
  EnvironmentType::Sandbox
)
```
# Configuration

`client_id` required

`client_secret` required

`EnvironmentType` optional (defaults to Production). Other option is Sandbox. 

# Usage
See https://developer.microbilt.com/api/ABAAcctVerification for the necessary parameters to pass in to each function.
For report created request model 
```
aba_acct_verification_request_model = {
  bankRoutingNumber: "011103093",
  bankAccountNumber: "9942192099"
}.to_json

```
All responses for all requests 'JsonObject', for get JSON string You can use ```.ToString()``` method
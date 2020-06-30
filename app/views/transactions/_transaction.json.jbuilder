json.extract! transaction, :id, :amount, :reason, :user_id, :beneficiary_id, :account_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

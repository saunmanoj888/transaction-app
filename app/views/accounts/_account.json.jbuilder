json.extract! account, :id, :account_numbder, :bank_name, :ifsc_code, :balance, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)

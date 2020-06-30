json.extract! beneficiary, :id, :account_number, :nick_name, :ifsc_code, :user_id, :created_at, :updated_at
json.url beneficiary_url(beneficiary, format: :json)

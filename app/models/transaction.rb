class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :beneficiary
  belongs_to :account
end

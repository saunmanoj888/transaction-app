class CreateBeneficiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :beneficiaries do |t|
      t.string :account_number
      t.string :nick_name
      t.string :ifsc_code
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

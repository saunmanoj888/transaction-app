class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account_numbder
      t.string :bank_name
      t.string :ifsc_code
      t.integer :balance
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

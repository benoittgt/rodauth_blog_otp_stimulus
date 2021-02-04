class CreateRodauthSmsCodes < ActiveRecord::Migration[6.1]
  def change
    # Used by the sms codes feature
    create_table :account_sms_codes do |t|
      t.foreign_key :accounts, column: :id
      t.string :phone_number, null: false
      t.integer :num_failures
      t.string :code
      t.datetime :code_issued_at, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :account, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :country_id
      t.integer :currency_id
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end

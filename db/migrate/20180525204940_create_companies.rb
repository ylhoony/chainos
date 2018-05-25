class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :account_id
      t.string :type
      t.string :name
      t.text :comment
      t.integer :warehouse_id
      t.integer :payment_term_id
      t.integer :currency_id
      t.boolean :status

      t.timestamps null: false
    end
    add_index :companies, [:type, :account_id]
  end
end

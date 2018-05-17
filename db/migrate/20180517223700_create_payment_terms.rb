class CreatePaymentTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_terms do |t|
      t.integer :account_id
      t.integer :payment_option_id
      t.string :name
      t.float :trade_credit_rate
      t.integer :trade_credit_days
      t.integer :days
      t.boolean :status

      t.timestamps null: false
    end
  end
end

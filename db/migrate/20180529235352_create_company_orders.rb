class CreateCompanyOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :company_orders do |t|
      t.integer :company_id
      t.string :order_reference
      t.string :type
      t.integer :warehouse_id
      t.integer :company_address_id
      t.integer :currency_id

      t.timestamps null: false
    end
  end
end

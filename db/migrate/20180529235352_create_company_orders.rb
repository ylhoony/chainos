class CreateCompanyOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :company_orders do |t|
      t.string :order_reference

      t.timestamps
    end
  end
end

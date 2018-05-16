class CreatePaymentOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_options do |t|
      t.string :name
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end

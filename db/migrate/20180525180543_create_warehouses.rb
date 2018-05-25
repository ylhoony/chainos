class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.integer :account_id
      t.string :name
      t.string :contact
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :country_id
      t.string :postal_code
      t.string :email
      t.string :phone
      t.string :fax
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end

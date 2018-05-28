class CreateCompanyAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :company_addresses do |t|
      t.integer :company_id
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
      t.text :comment
      t.boolean :status

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :company_id
      t.string :name
      t.string :sku
      t.text :description
      t.decimal :price, precision: 20, scale: 5
      t.integer :unit_of_measure_id

      t.timestamps null: false
    end
  end
end

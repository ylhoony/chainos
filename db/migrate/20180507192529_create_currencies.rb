class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :alpha_3_code
      t.string :numeric_code
      t.boolean :status

      t.timestamps null: false
    end
  end
end

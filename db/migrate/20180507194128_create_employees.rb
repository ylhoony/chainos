class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :user_id
      t.integer :account_id

      t.timestamps null: false
    end
  end
end

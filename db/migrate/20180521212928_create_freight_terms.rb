class CreateFreightTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :freight_terms do |t|
      t.integer :account_id
      t.string :name
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end

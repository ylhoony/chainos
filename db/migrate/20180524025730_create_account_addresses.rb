class CreateAccountAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :account_addresses do |t|
      t.string :name

      t.timestamps
    end
  end
end

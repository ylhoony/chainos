class CreateAccountContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :account_contacts do |t|
      t.string :name

      t.timestamps
    end
  end
end

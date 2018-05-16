class AddCurrentAccountFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_account_id, :integer
  end
end

class AddCurrentAccountFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_account, :integer
  end
end

class AddCurrentCompanyToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_company, :integer
  end
end

class Warehouse < ApplicationRecord
  belongs_to :account
  belongs_to :country
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"

  def self.active_warehouses(account)
    account.warehouses.where(status: true)
  end

end

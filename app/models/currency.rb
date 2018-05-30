class Currency < ApplicationRecord
  has_many :accounts
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"
  has_many :sales_orders, class_name: "SalesOrder"
  has_many :purchase_orders, class_name: "PurchaseOrder"

  def self.active_currencies
    where(status: true)
  end

end

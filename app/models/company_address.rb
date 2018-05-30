class CompanyAddress < ApplicationRecord
  belongs_to :company
  belongs_to :country

  has_many :sales_orders, class_name: "SalesOrder"
  has_many :purchase_orders, class_name: "PurchaseOrder"
end

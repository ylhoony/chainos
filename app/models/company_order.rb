class CompanyOrder < ApplicationRecord
  scope :sales_orders, -> { where(type: "SalesOrder") }
  scope :purchase_orders, -> { where(type: "PurchaseOrder") }

  belongs_to :company
  belongs_to :company_address
  belongs_to :currency
  belongs_to :warehouse

end

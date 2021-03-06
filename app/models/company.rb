class Company < ApplicationRecord
  scope :customers, -> { where(type: "Customer") }
  scope :suppliers, -> { where(type: "Supplier") }

  belongs_to :account
  belongs_to :currency
  belongs_to :payment_term
  belongs_to :warehouse

  has_many :company_addresses
  has_many :sales_orders, class_name: "SalesOrder"
  has_many :purchase_orders, class_name: "PurchaseOrder"

  validates :name, presence: true
end

class Account < ApplicationRecord
  belongs_to :country
  belongs_to :currency
  has_many :account_addresses
  has_many :account_contacts
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"
  has_many :employees
  has_many :users, through: :employees
  has_many :freight_terms
  has_many :payment_terms
  has_many :products
  has_many :sales_orders, class_name: "SalesOrder"
  has_many :purchase_orders, class_name: "PurchaseOrder"
  has_many :unit_of_measures
  has_many :warehouses
end

class Warehouse < ApplicationRecord
  belongs_to :account
  belongs_to :country
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"
end

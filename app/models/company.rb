class Company < ApplicationRecord
  has_many :companies
  scope :customers, -> { where(type: "Customer") }
  scope :suppliers, -> { where(type: "Supplier") }

  belongs_to :account
  belongs_to :currency
  belongs_to :payment_term
  belongs_to :warehouse
  # has_many :account_addresses

  validates :name, presence: true
end

class Account < ApplicationRecord
  belongs_to :country
  belongs_to :currency
  has_many :account_addresses
  has_many :employees
  has_many :users, through: :employees
  has_many :freight_terms
  has_many :payment_terms
  has_many :unit_of_measures
end

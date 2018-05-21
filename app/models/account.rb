class Account < ApplicationRecord
  belongs_to :country
  belongs_to :currency
  has_many :employees
  has_many :users, through: :employees
  has_many :freight_terms
  has_many :payment_terms
end

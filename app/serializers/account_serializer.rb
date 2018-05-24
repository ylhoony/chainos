class AccountSerializer < ActiveModel::Serializer
  belongs_to :country
  belongs_to :currency
  has_many :account_addresses
  has_many :employees
  has_many :freight_terms
  has_many :payment_terms

  attributes :id, :name
end

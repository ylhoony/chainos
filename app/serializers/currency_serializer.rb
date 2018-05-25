class CurrencySerializer < ActiveModel::Serializer
  has_many :accounts
  has_many :customers
  has_many :suppliers
  
  attributes :id, :name, :alpha_3_code, :numeric_code, :status
end

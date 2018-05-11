class CurrencySerializer < ActiveModel::Serializer
  has_many :accounts
  attributes :id, :name, :alpha_3_code, :numeric_code, :status
end

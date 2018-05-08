class CurrencySerializer < ActiveModel::Serializer
  attributes :id, :name, :alpha_3_code, :numeric_code, :status
end

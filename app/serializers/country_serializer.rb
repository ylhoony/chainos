class CountrySerializer < ActiveModel::Serializer
  has_many :accounts
  attributes :id, :name, :alpha_2_code, :alpha_3_code, :numeric_code, :status
end

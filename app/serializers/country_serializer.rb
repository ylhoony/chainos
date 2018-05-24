class CountrySerializer < ActiveModel::Serializer
  has_many :accounts
  has_many :account_addresses
  attributes :id, :name, :alpha_2_code, :alpha_3_code, :numeric_code, :status
end

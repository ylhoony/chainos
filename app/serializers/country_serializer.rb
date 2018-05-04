class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :alpha_2_code, :alpha_3_code, :numeric_code, :status
end

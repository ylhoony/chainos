class AccountSerializer < ActiveModel::Serializer
  belongs_to :country
  belongs_to :currency
  has_many :employees

  attributes :id, :name
end

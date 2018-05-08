class AccountSerializer < ActiveModel::Serializer
  has_many :employees

  attributes :id, :name

end
class UserSerializer < ActiveModel::Serializer
  has_many :employees

  attributes :id, :first_name, :last_name, :email, :phone

end
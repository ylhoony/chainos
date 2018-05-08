class EmployeeSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :account

  attributes :id, :user_id

end

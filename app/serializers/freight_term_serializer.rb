class FreightTermSerializer < ActiveModel::Serializer
  belongs_to :account

  attributes :id, :name, :status
end

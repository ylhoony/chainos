class UnitOfMeasureSerializer < ActiveModel::Serializer
  has_many :products
  attributes :id, :name, :status
end

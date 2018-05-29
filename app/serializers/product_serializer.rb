class ProductSerializer < ActiveModel::Serializer
  belongs_to :unit_of_measure
  attributes :id, :account_id, :sku, 
             :name, :description, :price
end

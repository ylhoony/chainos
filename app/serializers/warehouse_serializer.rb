class WarehouseSerializer < ActiveModel::Serializer
  belongs_to :country
  has_many :customers
  has_many :suppliers
  has_many :sales_orders
  
  attributes :id, :name, :contact, :address1, :address2, 
             :city, :state, :postal_code, :email, :phone,
             :fax, :status
end

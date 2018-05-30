class SalesOrderSerializer < ActiveModel::Serializer
  belongs_to :currency
  belongs_to :company
  belongs_to :warehouse
  belongs_to :company_address
  
  attributes :id, :order_reference
end

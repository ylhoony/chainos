class CustomerSerializer < ActiveModel::Serializer
  belongs_to :account
  belongs_to :currency
  belongs_to :payment_term
  belongs_to :warehouse
  has_many :sales_orders
  
  attributes :id, :name, :comment, :status
end

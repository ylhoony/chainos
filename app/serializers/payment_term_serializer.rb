class PaymentTermSerializer < ActiveModel::Serializer
  belongs_to :account
  belongs_to :payment_option
  has_many :customers
  has_many :suppliers
  
  attributes :id, :name, :trade_credit_rate, :trade_credit_days, :days, :status
end

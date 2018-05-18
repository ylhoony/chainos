class PaymentTermSerializer < ActiveModel::Serializer
  belongs_to :account
  belongs_to :payment_option
  attributes :id, :name, :trade_credit_rate, :trade_credit_days, :days, :status
end

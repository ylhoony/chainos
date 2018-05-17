class PaymentTermSerializer < ActiveModel::Serializer
  belongs_to :account
  belongs_to :payment_option
  attributes :id, :account_id, :name
end

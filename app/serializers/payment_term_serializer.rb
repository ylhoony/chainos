class PaymentTermSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :name
end

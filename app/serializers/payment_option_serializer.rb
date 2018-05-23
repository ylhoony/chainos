class PaymentOptionSerializer < ActiveModel::Serializer
  has_many :payment_terms
  attributes :id, :name, :status
end

class PaymentTerm < ApplicationRecord
  belongs_to :account
  belongs_to :payment_option
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"

  def self.active_payment_terms(account)
    account.payment_terms.where(status: true)
  end

end

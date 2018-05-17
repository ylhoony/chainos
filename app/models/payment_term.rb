class PaymentTerm < ApplicationRecord
  belongs_to :account
  belongs_to :payment_option
end

class Currency < ApplicationRecord
  has_many :accounts
  has_many :customers, class_name: "Customer"
  has_many :suppliers, class_name: "Supplier"

  def self.active_currencies
    where(status: true)
  end

end

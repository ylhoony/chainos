class Currency < ApplicationRecord
  has_many :accounts
  has_many :companies

  def self.active_currencies
    where(status: true)
  end

end

class Currency < ApplicationRecord
  has_many :accounts

  def self.active_currencies
    where(status: true)
  end

end

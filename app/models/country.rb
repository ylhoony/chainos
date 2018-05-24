class Country < ApplicationRecord
  has_many :accounts
  has_many :account_addresses

  def self.active_countries
    where(status: true)
  end
end

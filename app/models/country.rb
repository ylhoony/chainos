class Country < ApplicationRecord
  has_many :accounts

  def self.active_countries
    where(status: true)
  end
end

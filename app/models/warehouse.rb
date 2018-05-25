class Warehouse < ApplicationRecord
  belongs_to :account
  belongs_to :country
  has_many :companies
end

class Warehouse < ApplicationRecord
  belongs_to :account
  belongs_to :country
end

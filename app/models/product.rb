class Product < ApplicationRecord
  belongs_to :account
  belongs_to :unit_of_measure
end

class Cocktail < ApplicationRecord
  has_many :ingredients
  validates :name, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :seasonality, presence: true
end

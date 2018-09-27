class Ingredient < ApplicationRecord
  belongs_to :cocktail

  validates :name, presence: true
  validates :quantity, numericality: {greater_than: 0}
end

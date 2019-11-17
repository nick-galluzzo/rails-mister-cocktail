class Review < ApplicationRecord
  belongs_to :cocktail

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (1..5) }
end

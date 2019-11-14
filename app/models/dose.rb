class Dose < ApplicationRecord
  validates :description, presence: true, uniqueness: true
  belongs_to :cocktail
  belongs_to :ingredient
end

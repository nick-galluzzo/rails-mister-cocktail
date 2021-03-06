class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, uniqueness: true, presence: true
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :ingredients,
           through: :doses,
           source: :ingredient
end

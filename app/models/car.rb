class Car < ApplicationRecord
  has_many :favourites
  has_many :reviews
  belongs_to :owner

  validates :brand, presence: true
  validates :model, presence: true, uniqueness: true
  validates :year, presence: true, numericality: { greater_than_or_equal_to: 1900, less_than_or_equal_to: 2025 }
  validates :fuel, presence: true
end

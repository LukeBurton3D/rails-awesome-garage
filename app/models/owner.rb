class Owner < ApplicationRecord
  has_many :car

  validates :name, presence: true
end

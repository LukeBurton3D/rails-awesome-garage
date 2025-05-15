class Car < ApplicationRecord
  has_many :favourites
  has_many :reviews
end

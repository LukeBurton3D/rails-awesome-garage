# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning db..."
Car.destroy_all
Owner.destroy_all
Review.destroy_all
Favourite.destroy_all

puts "Creating cars..."
owner1 = Owner.create!(name: "Luke")
owner2 = Owner.create!(name: "Anja")
owner3 = Owner.create!(name: "Marco")
owner4 = Owner.create!(name: "Daria")

Car.create!(brand: "Ford", model: "Mustang", year: 2020, fuel: "Petrol", owner: owner1)
Car.create!(brand: "Citroen", model: "C1", year: 2014, fuel: "Petrol", owner: owner2)
Car.create!(brand: "Volkswagen", model: "Golf", year: 2019, fuel: "Electric", owner: owner3)
Car.create!(brand: "Vauxhall", model: "Van", year: 2009, fuel: "Diesel", owner: owner4)

puts "Created #{Car.count} cars"

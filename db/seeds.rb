# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Removing previous seeds..."
Restaurant.destroy_all
puts "All seeds are gone"

puts "Generating new ones..."
10.times do
  species = Restaurant::CATEGORIES.sample
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: species
  )
end
puts "New seeds done!"

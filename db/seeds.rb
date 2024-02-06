# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Clear existing data
Restaurant.destroy_all if Rails.env.development?

Restaurant.create!(
  name: "Belgian Bites",
  address: "202 Pine St",
  phone_number: "+300 45 45 67 76",
  category: "belgian"
)

Restaurant.create!(
  name: "Le Bistro",
  address: "101 Maple St",
  phone_number: "+321 46 33 25 88",
  category: "french"
)

Restaurant.create!(
  name: "Sushi Heaven",
  address: "789 Oak St",
  phone_number: "+391 44 57 33 46",
  category: "italian"
)

Restaurant.create!(
  name: "La Pizzeria",
  address: "456 Elm St",
  phone_number: "+311 23 45 67 89",
  category: "japanese"
)

Restaurant.create!(
  name: "China Garden",
  address: "123 Main St",
  phone_number: "+324 33 68 24 33",
  category: "chinese"
)

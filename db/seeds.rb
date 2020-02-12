# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01 45 67 56 34", category: "british" }
Chez_mario =  { name: "Chez Mario", address: "5 rue de Bizerte, 75017 Paris", phone_number: "01 45 67 56 34", category: "italian" }
Nefis = { name: "Le petit Gourmand", address: "35 rue Championnet, 75018 Paris", phone_number: "01 45 67 56 34", category: "french" }
DimSUm = { name: "Dim Sum", address: "45 rue des Dames, 75017 Paris", phone_number: "01 45 67 56 34", category: "asian" }


[ dishoom, Chez_mario, Nefis, DimSUm ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

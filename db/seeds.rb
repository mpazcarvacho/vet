# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



10.times do
  Client.create(name: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone_in_e164, email: 
    Faker::Internet.email)
end

10.times do
  Pet.create(name: Faker::Movies::LordOfTheRings.character, breed: Faker::Creature::Dog.breed, 
    birth_date: Faker::Date.between(from: 2.days.ago, to: Date.today), client_id: Faker::Number.between(from: 1, to: 10))
end

10.times do
  PetHistory.create(weight: Faker::Number.between(from: 1, to: 60), height: Faker::Number.between(from: 20, to: 140), 
    diagnosis: Faker::Lorem.paragraph, pet_id: Faker::Number.between(from: 1, to: 10))
end
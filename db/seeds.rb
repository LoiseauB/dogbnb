# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all

5.times do
  City.create(city_name: Faker::Address.city)
end

Dog.destroy_all

100.times do
  Dog.create(name: Faker::Creature::Dog.name, city: City.all.sample)
end

Dogsitter.destroy_all

30.times do
  Dogsitter.create(name: Faker::Artist.name, city: City.all.sample)
end

Stroll.destroy_all

200.times do
  Stroll.create(date: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now), dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, city: City.all.sample)
end
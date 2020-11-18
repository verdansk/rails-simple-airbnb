require 'faker'

10.times do
  flat = Flat.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(75..200),
    number_of_guests: rand(1..10)
  )
  flat.save!
end

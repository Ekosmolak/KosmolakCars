# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Vehicle.delete_all
Staff.delete_all
Manufacturer.delete_all

dealership_positions = ["Sales", "IT", "Receptionist", "Management"]

manufacturers = []

20.times do
  Staff.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    position: dealership_positions.sample
  )

  manufacturers << Manufacturer.create(manufacturer: Faker::Vehicle.manufacturer)
end

20.times do

  selected_manufacturer = manufacturers.sample

  Vehicle.create(
    manufacturer_id: selected_manufacturer.id,
    #manufacturer: selected_manufacturer.manufacturer,
    model: Faker::Vehicle.model,
    colour: Faker::Vehicle.color,
    price: Faker::Commerce.price(range: 9999.00..100000.00).to_f,
    odometer: Faker::Number.between(from: 1000, to: 250000),
    vehicle_type: Faker::Vehicle.car_type
  )
end
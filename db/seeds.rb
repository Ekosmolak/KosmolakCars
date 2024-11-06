require "csv"

Vehicle.delete_all
Staff.delete_all
Manufacturer.delete_all

dealership_positions = [ "Sales", "IT", "Receptionist", "Management" ]

csv_file1 = Rails.root.join('db/manufacturerss.csv')
csv_data1 = File.read(csv_file1)
manufacturers = CSV.parse(csv_data1, headers: true, encoding: 'iso-8859-1')

manufacturers.each do |manufacturer|
  Manufacturer.create(
    manufacturer: manufacturer['Brand']
  )
end

all_manufacturers = Manufacturer.all

csv_file = Rails.root.join('db/inventoryy.csv')
csv_data = File.read(csv_file)
vehicles = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

vehicles.each do |vehicle|
  Vehicle.create(
    manufacturer_id: all_manufacturers.sample.id,
    price: vehicle['Price'],
    model: vehicle['Model'],
    odometer: vehicle['Mileage'],
    vehicle_type: vehicle['Body'],
    colour: Faker::Vehicle.color
  )
end

20.times do
  Staff.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    position: dealership_positions.sample
  )
end

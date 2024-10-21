json.extract! vehicle, :id, :vehicleId, :manufactorId, :model, :colour, :price, :odometer, :vehicleType, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)

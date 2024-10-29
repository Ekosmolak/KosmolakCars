json.extract! vehicle, :id, :manufacturer, :model, :colour, :price, :odometer, :vehicle_type, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)

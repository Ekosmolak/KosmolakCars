class Vehicle < ApplicationRecord
  validates :price, :odometer, numericality: true
  validates :manufacturer_id, :model, :colour, :price, :odometer, :vehicle_type, presence: true
  belongs_to :manufacturer
end

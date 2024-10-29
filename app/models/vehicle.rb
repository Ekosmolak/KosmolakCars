class Vehicle < ApplicationRecord
  validates :manufacturer, :model, :colour, :price, :odometer, :vehicle_type, presence: true
  validates :price, :odometer, numericality: true
  belongs to :manufacturer
end

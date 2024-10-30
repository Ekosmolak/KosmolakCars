class Manufacturer < ApplicationRecord
  validates :manufacturer, presence: true
  has_many :vehicles
end

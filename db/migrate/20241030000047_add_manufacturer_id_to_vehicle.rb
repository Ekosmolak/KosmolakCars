class AddManufacturerIdToVehicle < ActiveRecord::Migration[7.2]
  def change
    add_column :vehicles, :manufacturer_id, :integer
  end
end

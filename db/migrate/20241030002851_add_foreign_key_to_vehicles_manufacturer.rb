class AddForeignKeyToVehiclesManufacturer < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :vehicles, :manufacturers
  end
end

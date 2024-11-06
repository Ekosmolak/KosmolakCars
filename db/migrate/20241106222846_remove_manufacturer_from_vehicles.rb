class RemoveManufacturerFromVehicles < ActiveRecord::Migration[7.2]
  def change
    remove_column :vehicles, :manufacturer, :string
  end
end

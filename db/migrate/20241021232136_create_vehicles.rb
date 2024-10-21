class CreateVehicles < ActiveRecord::Migration[7.2]
  def change
    create_table :vehicles do |t|
      t.integer :vehicleId
      t.integer :manufactorId
      t.string :model
      t.string :colour
      t.decimal :price
      t.integer :odometer
      t.string :vehicleType

      t.timestamps
    end
  end
end

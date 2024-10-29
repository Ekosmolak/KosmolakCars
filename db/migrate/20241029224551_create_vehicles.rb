class CreateVehicles < ActiveRecord::Migration[7.2]
  def change
    create_table :vehicles do |t|
      t.string :manufacturer
      t.string :model
      t.string :colour
      t.decimal :price
      t.integer :odometer
      t.string :vehicle_type

      t.timestamps
    end
  end
end

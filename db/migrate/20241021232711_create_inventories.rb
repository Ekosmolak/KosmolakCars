class CreateInventories < ActiveRecord::Migration[7.2]
  def change
    create_table :inventories do |t|
      t.integer :inventoryId
      t.integer :vehicleId
      t.integer :manufactorId

      t.timestamps
    end
  end
end

class CreateManufactors < ActiveRecord::Migration[7.2]
  def change
    create_table :manufactors do |t|
      t.integer :manufactorId
      t.string :manufactor

      t.timestamps
    end
  end
end

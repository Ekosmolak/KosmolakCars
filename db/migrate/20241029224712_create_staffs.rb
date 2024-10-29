class CreateStaffs < ActiveRecord::Migration[7.2]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :position

      t.timestamps
    end
  end
end

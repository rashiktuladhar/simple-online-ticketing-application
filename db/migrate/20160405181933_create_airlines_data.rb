class CreateAirlinesData < ActiveRecord::Migration
  def change
    create_table :airlines_data do |t|
      t.string :airlines_name
      t.string :airlines_address
      t.string :airlines_contact
      t.integer :airlines_plane_capacity

      t.timestamps null: false
    end
  end
end

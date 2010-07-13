class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.integer :brand_id
      t.string :name
      t.integer :door_nbr
      t.integer :wheel_nbr
      t.string :car_type 
      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end

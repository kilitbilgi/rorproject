class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :location
      t.date :pickupdate
      t.date :dropoffdate
      t.integer :cars_id
      t.integer :members_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

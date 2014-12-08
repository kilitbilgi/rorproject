class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :title
      t.string :make
      t.string :model
      t.integer :year_info
      t.string :color
      t.string :fueltype
      t.integer :hp
      t.string :image
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end

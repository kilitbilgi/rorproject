class Cars22 < ActiveRecord::Migration
  def self.up
    add_attachment :cars, :image
  end

  def self.down
    remove_attachment :cars, :image
  end
end

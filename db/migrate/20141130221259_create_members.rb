class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :fname
      t.string :lname
      t.datetime :bdate
      t.string :email
      t.integer :cellphone
      t.string :password
      t.boolean :isAdmin

      t.timestamps
    end
  end
end

class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end

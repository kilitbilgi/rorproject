class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :opt_key
      t.text :opt_val

      t.timestamps
    end
  end
end

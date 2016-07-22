class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.text :locality_name
      t.string :hospital_name
      t.text :address

      t.timestamps null: false
    end
  end
end

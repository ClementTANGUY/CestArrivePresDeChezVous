class CreateVictims < ActiveRecord::Migration[6.0]
  def change
    create_table :victims do |t|
      t.datetime :date
      t.string :last_name
      t.string :first_name
      t.integer :age
      t.string :victim_of
      t.string :country
      t.string :city
      t.string :address
      t.string :zip_code
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end

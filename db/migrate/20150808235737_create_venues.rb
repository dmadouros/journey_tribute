class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address_1
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
  end
end

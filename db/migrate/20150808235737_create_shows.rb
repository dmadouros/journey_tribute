class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.timestamp :starts_at
      t.timestamp :ends_at
      t.string :name
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class AddCoverToShows < ActiveRecord::Migration
  def change
    add_column :shows, :cover, :string
  end
end

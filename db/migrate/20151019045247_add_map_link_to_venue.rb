class AddMapLinkToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :map_link, :string
  end
end

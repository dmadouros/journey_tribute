class AddWebAddressToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :web_address, :string
  end
end

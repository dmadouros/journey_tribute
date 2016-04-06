class AddPrivatePartyToShows < ActiveRecord::Migration
  def change
    add_column :shows, :private_party, :boolean
  end
end

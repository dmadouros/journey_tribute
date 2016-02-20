class AddOnlineTixToShows < ActiveRecord::Migration
  def change
    add_column :shows, :online_tickets_link, :string
  end
end

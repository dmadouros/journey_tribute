class AddNotesToShow < ActiveRecord::Migration
  def change
    add_column :shows, :notes, :string
  end
end

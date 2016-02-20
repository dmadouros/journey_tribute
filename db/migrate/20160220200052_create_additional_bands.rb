class CreateAdditionalBands < ActiveRecord::Migration
  def change
    create_table :additional_bands do |t|
      t.references :show, index: true, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :band, index: true, foreign_key: true
    end
  end
end

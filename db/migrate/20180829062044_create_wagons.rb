class CreateWagons < ActiveRecord::Migration[5.2]
  def change
    create_table :wagons do |t|
      t.integer :plazz_top_places
      t.integer :plazz_bottom_places
      t.integer :coupe_top_places
      t.integer :coupe_bottom_places
      t.string :wagon_type

      t.timestamps
    end
  end
end

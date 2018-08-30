class DropWagons < ActiveRecord::Migration[5.2]
  def change
    drop_table :wagons
  end
end

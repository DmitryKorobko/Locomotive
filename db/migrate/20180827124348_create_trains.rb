class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.string :number
      t.string :model
      t.integer :number_of_wagons
      t.string :train_type

      t.timestamps
    end
  end
end

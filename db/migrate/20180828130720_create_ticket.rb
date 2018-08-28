class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :train_number
      t.string :start_station
      t.string :finish_station
      t.timestamps
    end
  end
end

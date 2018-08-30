class RecreateTickets < ActiveRecord::Migration[5.2]
  def change
    drop_table :tickets

    create_table :tickets do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
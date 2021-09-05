class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :car_id
      t.datetime :start_date
      t.datetime :end_date
      t.float :distance

      t.timestamps
    end
  end
end

class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.float :price_per_day
      t.float :price_per_km

      t.timestamps
    end
  end
end

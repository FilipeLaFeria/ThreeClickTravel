class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :price
      t.string :company
      t.string :flight_number

      t.timestamps
    end
  end
end

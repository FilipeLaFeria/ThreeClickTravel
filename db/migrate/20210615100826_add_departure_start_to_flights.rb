class AddDepartureStartToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :departure_start, :string
  end
end

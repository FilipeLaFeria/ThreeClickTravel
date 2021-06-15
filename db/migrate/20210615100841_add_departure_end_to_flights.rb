class AddDepartureEndToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :departure_end, :string
  end
end

class RemoveDepartureFromFlights < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :departure, :string
  end
end

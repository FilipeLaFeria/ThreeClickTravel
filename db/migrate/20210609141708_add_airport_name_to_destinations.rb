class AddAirportNameToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :airport_name, :string
  end
end

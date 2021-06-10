class AddDestinationCountryToFlight < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :country_name, :text
  end
end

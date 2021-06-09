class AddCityNameToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :city_name, :string
  end
end

class AddCityNameToAccommodation < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :city_name, :text
  end
end

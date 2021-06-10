class AddCountryNameToAccommodation < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :country_name, :text
  end
end

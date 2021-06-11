class AddCountryNameToDestination < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :country_name, :text
  end
end

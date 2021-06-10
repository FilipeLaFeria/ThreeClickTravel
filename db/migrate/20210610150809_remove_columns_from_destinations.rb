class RemoveColumnsFromDestinations < ActiveRecord::Migration[6.0]
  def change
    remove_column :destinations, :city_name
    remove_column :destinations, :country_name
    remove_column :destinations, :airport_name
  end
end

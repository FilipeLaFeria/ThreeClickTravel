class RenameDestinationToCityName < ActiveRecord::Migration[6.0]
  def change
    rename_column :flights, :destination, :city_name
  end
end

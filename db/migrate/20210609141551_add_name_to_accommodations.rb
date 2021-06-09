class AddNameToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :name, :string
  end
end

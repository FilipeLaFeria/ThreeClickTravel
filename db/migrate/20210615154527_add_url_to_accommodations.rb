class AddUrlToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :url, :string
  end
end

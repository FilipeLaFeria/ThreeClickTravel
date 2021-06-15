class AddUrlToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :url, :string
  end
end

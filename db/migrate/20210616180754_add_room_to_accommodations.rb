class AddRoomToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :room, :string
  end
end

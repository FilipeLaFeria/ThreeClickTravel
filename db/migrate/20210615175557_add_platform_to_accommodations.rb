class AddPlatformToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :platform, :string
  end
end

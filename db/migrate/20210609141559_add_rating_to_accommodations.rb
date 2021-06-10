class AddRatingToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :rating, :string
  end
end

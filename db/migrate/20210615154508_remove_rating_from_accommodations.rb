class RemoveRatingFromAccommodations < ActiveRecord::Migration[6.0]
  def change
    remove_column :accommodations, :rating
  end
end

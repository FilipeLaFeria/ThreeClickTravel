class AddCheckInToAccommodation < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :check_in, :text
  end
end

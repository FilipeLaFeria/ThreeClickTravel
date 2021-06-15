class AddCheckOutToAccommodation < ActiveRecord::Migration[6.0]
  def change
    add_column :accommodations, :check_out, :date
  end
end

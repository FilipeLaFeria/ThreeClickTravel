class RemovePassengerFromProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :passenger
  end
end

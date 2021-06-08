class AddPassengerToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :passenger, :integer, default: 1
  end
end

class AddTravellersToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :travellers, :integer
  end
end

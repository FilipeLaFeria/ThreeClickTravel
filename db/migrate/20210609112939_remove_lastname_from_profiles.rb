class RemoveLastnameFromProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :last_name
  end
end

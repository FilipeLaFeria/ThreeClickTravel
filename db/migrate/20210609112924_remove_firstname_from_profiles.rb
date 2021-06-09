class RemoveFirstnameFromProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :first_name
  end
end

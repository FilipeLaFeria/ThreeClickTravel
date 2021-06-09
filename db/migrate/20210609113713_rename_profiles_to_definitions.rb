class RenameProfilesToDefinitions < ActiveRecord::Migration[6.0]
  def change
    rename_table :profiles, :definitions
  end
end

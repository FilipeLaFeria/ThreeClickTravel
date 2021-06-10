class AddDurationToFlight < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :duration, :text
  end
end

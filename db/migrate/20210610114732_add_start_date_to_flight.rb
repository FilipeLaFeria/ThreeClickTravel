class AddStartDateToFlight < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :start_date, :date
  end
end

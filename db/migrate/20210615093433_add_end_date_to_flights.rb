class AddEndDateToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :end_date, :date
  end
end

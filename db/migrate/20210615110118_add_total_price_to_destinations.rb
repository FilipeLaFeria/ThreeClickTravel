class AddTotalPriceToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :total_price, :integer
  end
end

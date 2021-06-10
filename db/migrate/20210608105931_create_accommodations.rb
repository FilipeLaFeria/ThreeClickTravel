class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end

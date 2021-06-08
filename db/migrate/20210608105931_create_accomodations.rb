class CreateAccomodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accomodations do |t|
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end

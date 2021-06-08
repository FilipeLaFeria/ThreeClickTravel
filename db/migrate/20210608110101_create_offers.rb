class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :total_price
      t.date :date
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end

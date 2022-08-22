class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :price_rental
      t.string :status

      t.timestamps
    end
  end
end

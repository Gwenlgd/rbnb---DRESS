class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :description
      t.string :size
      t.integer :price
      t.string :location
      t.string :brand
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

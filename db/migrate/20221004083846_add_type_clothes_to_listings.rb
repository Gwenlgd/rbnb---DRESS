class AddTypeClothesToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :type_clothes, :string
  end
end

class AddtitleToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :title, :string
  end
end

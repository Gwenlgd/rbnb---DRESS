class RemoveTypeToListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :type
  end
end

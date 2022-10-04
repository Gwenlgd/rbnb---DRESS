class RemoveInsurance < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :insurance
  end
end

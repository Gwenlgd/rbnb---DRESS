class AddDeliveryToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :delivery, :string
  end
end

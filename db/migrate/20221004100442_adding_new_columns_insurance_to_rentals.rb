class AddingNewColumnsInsuranceToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :insurance, :string
  end
end

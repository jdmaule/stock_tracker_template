class AddLocationFormattedAddressToStock < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :location_formatted_address, :string
  end
end

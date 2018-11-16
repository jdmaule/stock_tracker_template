class AddLocationLongitudeToStock < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :location_longitude, :float
  end
end

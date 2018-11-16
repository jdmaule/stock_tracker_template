class AddFollowCountToStocks < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :follows_count, :integer
  end
end

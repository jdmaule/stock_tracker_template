class AddCommentCountToStocks < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :comments_count, :integer
  end
end

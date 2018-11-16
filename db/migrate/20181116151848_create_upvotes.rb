class CreateUpvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.integer :user_id
      t.integer :stock_id

      t.timestamps
    end
  end
end

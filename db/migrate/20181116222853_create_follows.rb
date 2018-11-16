class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :stock_id
      t.string :notes

      t.timestamps
    end
  end
end

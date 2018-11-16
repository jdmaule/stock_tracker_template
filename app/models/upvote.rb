class Upvote < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Stock",
             :foreign_key => "stock_id",
             :counter_cache => :likes_count

  belongs_to :user

  # Indirect associations

  # Validations

  validates :stock_id, :uniqueness => { :scope => [:user_id], :message => "already liked" }

  validates :stock_id, :presence => true

  validates :user_id, :presence => true

end

class Upvote < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :stock_id, :uniqueness => { :scope => [:user_id], :message => "already liked" }

  validates :stock_id, :presence => true

  validates :user_id, :presence => true

end

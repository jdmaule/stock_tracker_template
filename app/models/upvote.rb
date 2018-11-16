class Upvote < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :stock_id, :presence => true

  validates :user_id, :presence => true

end

class Comment < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Stock",
             :foreign_key => "stock_id",
             :counter_cache => true

  belongs_to :commenter,
             :class_name => "User"

  # Indirect associations

  # Validations

  validates :body, :presence => true

  validates :commenter_id, :presence => true

  validates :stock_id, :presence => true

end

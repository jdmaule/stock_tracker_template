class Stock < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Upvote",
             :dependent => :destroy

  belongs_to :owner,
             :class_name => "User",
             :counter_cache => :own_photos_count

  # Indirect associations

  # Validations

  validates :image, :presence => true

  validates :owner_id, :presence => true

end

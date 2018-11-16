class Stock < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :follows,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :ticker, :presence => true

end

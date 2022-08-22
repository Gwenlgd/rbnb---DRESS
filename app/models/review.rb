class Review < ApplicationRecord
  belongs_to :rental

  validates :comment, length: { minimum: 10, maximum: 100 }
  validates :rating, numericality: { in: 1..5 }
end

class Listing < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals

  validates :description, length: { minimum: 30, maximum: 500 }
  validates :size, presence: true
  validates :price, presence: true
  validates :location, presence: true
end

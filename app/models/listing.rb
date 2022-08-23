class Listing < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals

  validates :title, presence: true, length: { maximum: 15 }
  validates :description, length: { minimum: 30, maximum: 500 }
  validates :category, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :location, presence: true
end

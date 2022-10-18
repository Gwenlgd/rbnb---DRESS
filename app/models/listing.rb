class Listing < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals

  has_many_attached :photos

  validates :title, presence: true, length: { maximum: 160 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
  validates :category, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :location, presence: true

end

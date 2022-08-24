class Listing < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :reviews, through: :rentals

  has_one_attached :photo

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { minimum: 10, maximum: 500 }
  validates :category, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :location, presence: true
end

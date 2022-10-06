class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :review, dependent: :destroy

  validates :price_rental, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  validates :insurance, acceptance: true
  validates :delivery, acceptance: true
end

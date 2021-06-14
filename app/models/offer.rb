class Offer < ApplicationRecord
  belongs_to :destination
  has_many :bookings
  has_many :users, through: :bookings
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

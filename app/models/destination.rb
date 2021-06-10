class Destination < ApplicationRecord
  belongs_to :accommodation
  belongs_to :flight
  has_many :offers, dependent: :destroy
end

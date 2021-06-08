class Destination < ApplicationRecord
  belongs_to :accomodation
  belongs_to :flight
end

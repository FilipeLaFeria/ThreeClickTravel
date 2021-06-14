class Flight < ApplicationRecord
  has_many :destinations
  has_many :accommodations, through: :destinations
end

class Accommodation < ApplicationRecord
  has_many :destinations
  has_many :flights, through: :destinations
end

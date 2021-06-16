class Accommodation < ApplicationRecord
  has_many :destinations
  has_many :flights, through: :destinations
  validates :price, presence: true, numericality: true
end

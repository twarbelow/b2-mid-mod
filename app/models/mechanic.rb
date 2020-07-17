class Mechanic < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :experience

  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics
end

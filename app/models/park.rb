class Park < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price

  has_many :rides
end

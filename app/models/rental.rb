class Rental < ActiveRecord::Base
  has_many :cars
  has_many :members
end

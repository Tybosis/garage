require 'car'
# Stall class that initializes with a unique id, a boolean value for filled, a
# car_id that will indicate what car is parked in the stall, and a boolean value
# of whether this given stall is for electric cars or not.
class Stall
  attr_reader :electric
  attr_accessor :filled, @car_id
  def initialize(id, electric = false)
    @id = id
    @filled = false
    @car_id = nil
    @electric = electric
  end
end

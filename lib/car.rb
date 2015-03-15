# Car class that initializes with with a license number, a boolean value
# indicating whether the car is parked or not, a time when the car entered the
# garage, and a boolean value indicating if the car is electric or not.
class Car
  attr_reader :license
  attr_accessor :parked
  def initialize(license, electric = false)
    @license = license
    @parked = false
    @time = Time.now
    @electric = electric
  end
end

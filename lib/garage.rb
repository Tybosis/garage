# Garage class that initializes with a collection of stalls
class Garage
  attr_accessor :stalls
  def initialize(stalls)
    @stalls = stalls
  end
  ELECTRIC_RATE = 12.00
  REGULAR_RATE = 10.00

  def find_empty_spot
    # this method will look through the list of stalls until if finds
    # a stall that is not filled (stalls.each{ |stall| !stall.filled })
    # and return the first one that is not filled.
  end

  def park_car(car)
    # this method will call the find_empty_spot method to get an empty stall,
    # update the car_id value with the car's license number, and set the stall's
    # parked attribute to true.
  end

  def find_car(car)
    # this method will look through all the stalls using a cars license number
    # and will return the stall where it is parked.
  end

  def retrieve_car(car)
    # this method will call the find_car method to retrieve the stall where the
    # car is parked, and set its filled value back to false.
  end

  def calculate_payment(car)
    # this method will return the result of multiplying the values returned by
    # choose_rate and time_parked methods with the car passed in as an argument.
  end

  def choose_rate(car)
    # this method will check if the car is electric or not and return
    # the proper constant rate
  end

  def time_parked(car)
    # this method will return the number of hours a car was parked, rounded
    # up of course
  end
end

# Modeling a Parking Garage in Ruby

by Tyler Pottle.

## Description

This project is a simulated model for a parking garage written in ruby in
pseudo-code.  I began by sketching out a garage on paper, with separate stalls
and cars being driven and parked.  I thought the best way to model this situation
was to create 3 classes, one for cars, one for stalls, and one for garages.  My
design is built around the idea that dependency in this system should flow
from the garage down to the car.  I dont think the car class will change much,
but my garage class could change a lot of things, such as how cars a parked, how
the payment system works, how many stalls there are, how to find and assign
parking spaces, etc.  Therefore basically all of the methods are contained
within the garage class, which depend on certain behaviors out of both the
stall class and the car class.

### Car class

A car is basically only aware of itself, with attributes that the stall and
garage can use carry out their functionality. Each car object is initialized
with a unique license plate used for identification, a boolean value of whether
it is parked or not that can be modified, a boolean value to identify if it is
electric or not, and the time that it entered the garage.

### Stall class

The stall class is also limited in its knowledge and is just initialized with
some information that the garage class can use to carry out its tasks.  A stall
object is initialized with a unique id, a boolean value to identify whether it
is currently filled or not, a field initially set to nil that will hold a cars
license number, used for retrieving parked cars, and a boolean value of whether
the stall is designed for electric cars or not.  This class does depend on a
car object having a license and using that license to identify a unique car
object but, again, it feels like the stall should depend on the more reliable
car class than the other way around.

### Garage class

This class is the meat of this model, and it includes all of the necessary
methods to find an empty stall, park a car, retrieve a parked car, figure out
how much money the driver of the car owes.  I am assuming that a garage object
will be initialized with an array of stall objects modeling all of the physical
stalls in the actual garage.

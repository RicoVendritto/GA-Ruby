class Vehicle

  # @this_meter = ''
  # @this_gas = ''

  def initialize(meter, gas)
    @this_meter = meter
    @this_gas = gas
  end

  def do_something
    puts "Hello, World!"
    puts @this_meter
    puts @this_gas
  end

  def sound_horn
    sleep 0.5
    puts "Beep!"
    sleep 0.5
    puts "Beep!"
    sleep 0.5
    puts "MoFo, get out of the way!"
  end

  def drive
    puts "Vroom...! Vroom...!"
  end

  def check_milage
    puts @this_meter / @this_gas
  end

end

class Car < Vehicle
  def my_car
    puts "This is a Car"
  end
end

class Truck < Vehicle
  def my_truck
    puts "This is a Truck"
  end
end

my_car = Car.new(1000, 456)
my_car.my_car
my_car.do_something
my_car.sound_horn
my_car.check_milage
my_car.drive

my_truck = Truck.new(3456789, 9876543)
my_truck.my_truck
my_truck.do_something
my_truck.sound_horn
my_truck.check_milage
my_truck.drive

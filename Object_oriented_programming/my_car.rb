module ColorObject
  def spray_paint(new_color)
    self.color = new_color
  end
end

module Truckable
  def place_in_bed(obj)
    p "You now have a #{obj} in your truck bed!"
  end
end

class Vehicle
  @@num_of_vehicles = 0

  attr_accessor :speed, :color, :model
  attr_reader :year

  def initialize(year,make,model)
    @@num_of_vehicles += 1
    @year = year
    @make = make
    @model = model
    @speed = 0
  end

  TRUCK_BED = true

  include ColorObject

  def self.gas_mileage
    puts (15..42).to_a.sample
  end

  def speed_up
    @speed += 10
  end

  def brake
    @speed -= 10
  end

  def shut_off
    @speed = 0
  end

  def print_num_vehicles
    p "There are #{@@num_of_vehicles} vehicles"
  end

  def age
    p calc_age
  end

  private

  def calc_age
    age = Time.now.year - self.year
  end
end

class MyCar < Vehicle
  COMPACT = false
end

class MyTruck < Vehicle
  include Truckable
end

my_whip = MyCar.new(2016, "Nissan", "Versa")
my_whip.spray_paint("White")
puts "The color of my whip is #{my_whip.color}"
my_whip.speed_up
my_whip.speed_up
puts "I am traveling #{my_whip.speed} MPH"
my_whip.brake
puts "I am traveling #{my_whip.speed} MPH"
my_whip.shut_off
puts "I am traveling #{my_whip.speed} MPH"
puts my_whip
my_whip.print_num_vehicles
my_whip.age

my_ram = MyTruck.new(2019, "Dogde", "Ram")
my_ram.place_in_bed("Baby")

p MyTruck.ancestors
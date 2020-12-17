module Transportation
  class Vehicle; end
  class Truck < Vehicle; end
  class Car < Vehicle; end
end

p Transportation::Vehicle.new
p Transportation::Truck.new
p Transportation::Car.new
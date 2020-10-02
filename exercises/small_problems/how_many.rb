vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(cars)
  car_hash = {}
  cars.each do |car|
    car_hash.include?(car) ? car_hash[car] += 1 : car_hash[car] = 1
  end
  car_hash.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)

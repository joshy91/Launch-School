def multiples_of_3(num)
  Range.new(1,num).to_a.select {|num| num % 3 == 0}
end

def multiples_of_5(num)
  Range.new(1,num).to_a.select {|num| num % 5 == 0}
end

def multisum(num)
  multiples_of_3(num).union(multiples_of_5(num)).reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
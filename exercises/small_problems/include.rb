def include?(arr,val)
  bool = false
  arr.each {|ele| bool = true if ele == val }
  bool
end

puts include?([1,2,3,4,5], 3)
puts include?([1,2,3,4,5], 6) 
puts include?([], 3) 
puts include?([nil], nil) 
puts include?([], nil) 


include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

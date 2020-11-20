def triangle(n1,n2,n3)
  arr = [n1,n2,n3].sort
  small_legs = arr.select{|ele| ele < arr.max}
  return :invalid if (arr.max > small_legs.sum && small_legs.count == 2) || arr.any?{|ele| ele <= 0} 
  return :equilateral if arr.all?(arr[0])
  return :isosceles if arr.count(arr[0]) == 2 || arr.count(arr[1]) == 2
  return :scalene
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5) 
p triangle(3, 4, 5) 
p triangle(0, 3, 3) 
p triangle(3, 1, 1) 

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
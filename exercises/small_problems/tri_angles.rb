def triangle(n1,n2,n3)
  arr = [n1,n2,n3].sort
  return :invalid if arr.sum != 180 || arr.any? {|ele| ele == 0}
  return :right if arr.any?{|ele| ele == 90 }
  return :acute if arr.all?{|ele| ele < 90 }
  return :obtuse
end

p triangle(60, 70, 50) 
p triangle(30, 90, 60) 
p triangle(120, 50, 10) 
p triangle(0, 90, 90) 
p triangle(50, 50, 50) 

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
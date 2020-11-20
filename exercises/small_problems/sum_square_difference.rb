def sum_square_difference(n)
  sum_n_then_square(n)-sum_of_n_square(n)
end

def sum_of_n_square(n)
  (1..n).to_a.inject(0) {|sum, val| sum + val **2}
end

def sum_n_then_square(n)
  (1..n).to_a.sum ** 2
end

p sum_of_n_square(3)

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
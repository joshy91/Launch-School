def find_fibonacci_index_by_length(num)
  n1 = 1
  n2 = 1
  count = 3
  while fibonacci_sequence(n1,n2)[0].digits.length < num
    n2, n1 = fibonacci_sequence(n1,n2)
    count += 1
  end
  count
end 

def fibonacci_sequence(n1,n2)
  num1, num2 = n1 + n2, n2
end

puts find_fibonacci_index_by_length(2)          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3)         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000) 
# puts find_fibonacci_index_by_length(10000) 


# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
def featured(n)
  num, return_val = 7, 7
  while return_val <= n
    num += 7
    return_val = num if num.odd? && num.digits.all?{|ele| num.digits.count(ele)==1}
  end
  return_val
end

p featured(12)
p featured(20) 
p featured(21) 
p featured(997) 
p featured(1029) 
p featured(999_999) 
p featured(999_999_987) 

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

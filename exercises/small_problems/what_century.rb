def century(year)
  return '1st' if year < 101
  ending_hash = {0 => 'th', 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 8 => 'th', 9 => 'th'}
  year_digits = year.digits.reverse
  ones_digit = year_digits.pop
  tens_digit = year_digits.pop
  ending = ending_hash[year[-1]]
  val = year_digits.join.to_i + 1
  val = (val - 1) if ones_digit == 0 && tens_digit == 0
  return val.to_s + 'th' if val.to_s[-2] == '1'
  val.to_s + ending_hash[val.to_s[-1].to_i]
end

puts century(2000) 
puts century(2001) 
puts century(1965) 
puts century(256)
puts century(5) 
puts century(10103)
puts century(1052) 
puts century(1127) 
puts century(11201) 
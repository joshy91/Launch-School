DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  num_arr = num.digits.reverse
  num_arr = num_arr.map {|num| DIGITS[num]}
  num_arr.join
end

def signed_integer_to_string(num)
    return '0' if num == 0
    (num > 0) ? ('+' + integer_to_string(num)) : ('-' + integer_to_string(num.magnitude))
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
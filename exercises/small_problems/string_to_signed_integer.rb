DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  neg = false
  num_arr = string.chars
  neg = true if num_arr[0] == '-'
  if num_arr[0] == '-' or num_arr[0] == '+'
    num_arr.shift
  end
  num_arr = num_arr.map {|char| DIGITS[char]}
  num = s_to_i_converter(num_arr)
  neg ? -num : num
end

def s_to_i_converter(arr)
  place = arr.reverse
  total = 0
  place.each_with_index { |item, index| total += (item*(10**index))}
  total
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

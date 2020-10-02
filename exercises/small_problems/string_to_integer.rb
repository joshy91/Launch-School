def string_to_integer(string)
  num_arr = string.chars.map {|char| s_to_i(char)}
  s_to_i_converter(num_arr)
end

def s_to_i_converter(arr)
  place = arr.reverse
  total = 0
  place.each_with_index { |item, index| total += (item*(10**index))}
  total
end

def s_to_i(char)
  case char
  when '0'
    0
  when '1'
    1
  when '2'
    2
  when '3'
    3
  when '4'
    4
  when '5'
    5
  when '6'
    6
  when '7'
    7
  when '8'
    8
  else
    9
  end
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
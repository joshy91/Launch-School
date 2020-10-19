def rotate_array(arr)
	arr2 = arr.clone
	first = arr2.shift
	arr2.append(first)
	arr2
end

def rotate_rightmost_digits(num, digits)
	val = num.to_s.chars
	sub_arr = val[-(digits)..-(1)]
	val[-(digits)..-(1)] = rotate_array(sub_arr)
	val.join('').to_i
end

p rotate_rightmost_digits(735291, 1) 
p rotate_rightmost_digits(735291, 2) 
p rotate_rightmost_digits(735291, 3) 
p rotate_rightmost_digits(735291, 4) 
p rotate_rightmost_digits(735291, 5) 
p rotate_rightmost_digits(735291, 6) 

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
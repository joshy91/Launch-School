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

def max_rotation(num)
	max = num.digits.size
	while max > 0
		num = rotate_rightmost_digits(num,max)
		max -=1
	end
	num
end

p max_rotation(735291) 
p max_rotation(3) 
p max_rotation(35) 
p max_rotation(105)
p max_rotation(8_703_529_146)

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

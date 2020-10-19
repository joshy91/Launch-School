def word_to_digit(str)
	num_hash = {}
	num_arr = (0..9).to_a
	num_word_arr = %w(zero one two three four five six seven eight nine)
	num_word_arr.each_with_index {|ele,index| num_hash[ele]=num_arr[index]}
	p num_hash
	new_str = str.split(' ').map do |ele| 
		if ele[-1].match(/[^a-z]/)
			ele = ele.chars
			punc = ele.pop
			ele = ele.join
			num_word_arr.include?(ele) ? num_hash[ele].to_s + punc : ele + punc
		else
		num_word_arr.include?(ele) ? num_hash[ele].to_s : ele
		end
	end
	new_str.join(" ")
end



p word_to_digit('Please call me at five five five one two three four. Thanks.')

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

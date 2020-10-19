def light_switches(num)
	arr = (1..num).to_a
	arr2 = arr.map {|ele| false}
	val = 1
	while val <= num
	arr2 = arr2.each_with_index {|ele,index| arr2[index] = !ele if arr[index] % val == 0}
	p arr2
	val +=1
	end
	arr.select{|num| arr2[num-1]}
end

p light_switches(5)
p light_switches(10)
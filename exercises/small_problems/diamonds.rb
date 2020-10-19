def diamond(num)
	for i in (1..num)
		next if i.even?
		if i < num
			puts line(i,num) 
		else
			for i in (0..num)
				val = num - i
				next if val.even?
				puts line(val,num)
			end
		end
	end
end

def line(n,num)
	spaces = " " * ((num-n)/2)
	stars = "*" * n
	spaces + stars + spaces
end

diamond(1)
diamond(3)
diamond(9)
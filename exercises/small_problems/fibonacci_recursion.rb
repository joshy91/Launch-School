def fibonacci(num)
	return 1 if num == 1 || num == 2
	fibonacci(num-1) + fibonacci(num-2)
end

p fibonacci(20)
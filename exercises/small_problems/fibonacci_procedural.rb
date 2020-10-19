def fibonacci(num)
	return 1 if num <=2
	count = 3
	num1, num2 = 1, 1
	while count <= num
		fib = num1 + num2
		num1, num2 = fib, num1
		count += 1
	end
	fib
end

p fibonacci(15)
p fibonacci(20)
p fibonacci(100_001)

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001)
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

def fibonacci_last(num)
	last = fibonacci(num).digits.shift
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
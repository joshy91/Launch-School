def fizzbuzz(n1,n2)
  output = ''
  (n1..n2).to_a.each do |num|
    str = ''
    case
    when num % 3 == 0 && num % 5 == 0
      str << "FizzBuzz"
    when num % 3 == 0 
      str << "Fizz"
    when num % 5 == 0
      str << "Buzz"
    else
      str << num.to_s
    end
    str << ", " if num < n2
    output << str
    end
  output
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

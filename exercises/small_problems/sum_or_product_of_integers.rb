def prompt(message)
  puts "=> #{message}"
end

prompt("Please enter an integer greater than 0:")
integer = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

if choice == 's'
total = Range.new(1,integer).reduce(:+)
puts "The sum of the integers between 1 and #{integer} is #{total}."

else
total = Range.new(1,integer).reduce(1, :*)
puts "The product of the integers between 1 and #{integer} is #{total}."
end
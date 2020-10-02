def prompt(message)
  puts "=> #{message}"
end

position = %w[1st 2nd 3rd 4th 5th last]

num_arr = []

position.each do |pos|
  prompt("Enter the #{pos} number:")
  num = gets.chomp.to_i
  num_arr.append(num)
end

final_num = num_arr.pop

if num_arr.include?(final_num)
  puts("The number #{final_num} appears in #{num_arr}.")
else
  puts("The number #{final_num} does not appears in #{num_arr}.")
end

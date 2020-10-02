def prompt(message)
  puts "=> #{message}"
end

prompt('What is the bill?')
bill = gets.chomp.to_f

prompt('What is the tip percentage?')
tip = gets.chomp.to_f

puts "The tip is $#{bill * (tip / 100)}"

puts "The total is $#{bill + bill * (tip / 100)}"

def prompt(message)
  puts "=> #{message}"
end

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retire_age = gets.chomp.to_i

current_year = 2020
retire_time = retire_age - age

puts "It's #{current_year}. You will retire in #{current_year + retire_time}."
puts "You have only #{retire_time} years of work to go!"
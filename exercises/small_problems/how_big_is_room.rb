def prompt(message)
  puts "=> #{message}"
end

prompt("Enter the length of the room in meters:")
length = gets.chomp.to_f

prompt("Enter the width of the room in meters:")
width = gets.chomp.to_f

puts "The area of the room is #{length*width} square meters #{length*width*10.7639}."
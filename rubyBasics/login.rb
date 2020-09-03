PASSWORD = "blah"
USERNAME = "blee"

loop do
puts ">> Please enter your user name:"
user = gets.chomp.to_s
puts ">> Please enter your password:"
pass = gets.chomp.to_s
break if pass == PASSWORD && user == USERNAME
puts ">> Authorization failed!"
end

puts "Welcome!"
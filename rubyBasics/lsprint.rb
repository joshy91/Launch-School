answer = nil

loop do
puts ">> How many output lines do you want? Enter a number >= 3:"
answer = gets.chomp.to_i
puts ">> That's not enough lines." unless answer >= 3
break if answer >= 3
end

while answer > 0
puts "Launch School is the best!"
answer -= 1
end

answer = nil

loop do 

loop do
puts ">> How many output lines do you want? Enter a number >= 3:"
answer = gets.chomp.downcase
break if answer.to_i >= 3 || answer == 'q'
puts ">> That's not enough lines."
end

break if answer == 'q'

answer = answer.to_i

while answer > 0
puts "Launch School is the best!"
answer -= 1
end

end




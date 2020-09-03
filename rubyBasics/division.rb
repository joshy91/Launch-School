numer = nil
denom = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
puts ">> Please enter the numerator:"
numer = gets.chomp
break if valid_number?(numer)
puts ">> Invalid input. Only integers are allowed."
end

loop do
puts ">> Please enter the denominator:"
denom = gets.chomp
break if valid_number?(denom) && denom.to_i != 0
puts ">> Invalid input. A denominator of 0 is not allowed." if denom == '0'
puts ">> Invalid input. Only integers are allowed." unless denom == '0'
end

answer = numer.to_i / denom.to_i
puts "#{numer} / #{denom} is #{answer}"
answer = nil

while answer != 'y' && answer != 'n'
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase
puts "something" if answer == 'y' 
puts ">> Invalid input! Please enter y or n" unless answer == 'n' || answer == 'y'
end
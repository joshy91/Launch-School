puts "How old are you?"
age = gets.chomp
age = age.to_i 

for i in [10,20,30,40] do 
  puts "Your age in #{i} years will be #{age+i}"
end

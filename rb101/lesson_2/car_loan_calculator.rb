def prompt(message)
  puts "=> #{message}"
end

prompt("Enter the loan amount in $")
loan_amount = gets.chomp
prompt("Enter the Annual Percentage Rate (APR)")
apr = gets.chomp
prompt("Enter the loan duration (in years)")
loan_duration = gets.chomp

n = loan_duration.to_i * 12
j = ((apr.to_f)/100) / 12

m = loan_amount.to_i * (j / (1 - (1 + j)**(-n)))

puts "The monthly payment amount is #{m}"

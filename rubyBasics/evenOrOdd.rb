count = 1

loop do
  count.odd? ? parity = 'odd' : parity = 'even'
  puts "#{count} is #{parity}!"
  count += 1
  break if count > 5
end
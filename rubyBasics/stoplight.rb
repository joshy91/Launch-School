stoplight = ['green', 'yellow', 'red'].sample

case stoplight
puts 'Go!' when 'green'
puts 'Slow down!' when 'yellow'
else puts 'Stop!'
end
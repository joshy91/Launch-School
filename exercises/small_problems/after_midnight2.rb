def after_midnight(time)
  time_arr = time.split(":").map {|num| num.to_i }
  (time_arr[0]*60 + time_arr[1]) % 1440
end

def before_midnight(time)
  time_arr = time.split(":").map {|num| num.to_i }
  (1440 - (time_arr[0]*60 + time_arr[1])) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0


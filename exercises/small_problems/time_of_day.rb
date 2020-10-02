def positive(num)
  num >= 0
end

def val_string(val)
  (0..9).to_a.include?(val) ? ("0" + val.to_s) : val.to_s
end

def time_of_day(num)
  mins = num.abs
  while mins >= 1440
    mins -= 1440
  end
  hour_val = mins / 60
  hour_val = 23 - hour_val if !positive(num)
  min_val = mins.remainder(60)
  min_val = 60 - min_val if !positive(num) && min_val > 0

  puts "#{val_string(hour_val)}:#{val_string(min_val)}"
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437) 
puts time_of_day(3000) 
puts time_of_day(800) 
puts time_of_day(-4231)

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"


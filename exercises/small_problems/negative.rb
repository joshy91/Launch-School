def negative(num)
  pos_val = num <=> 0
  case pos_val
  when 1
    -num
  when -1
    num
  else
    0
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
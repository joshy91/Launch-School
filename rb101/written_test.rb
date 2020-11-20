def lights(n)
  arr = (1..n).to_a
  arr.to_h {|x| [x,!x]}
end

p lights(5)
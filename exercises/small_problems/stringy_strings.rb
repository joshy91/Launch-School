def stringy(num)
  val = ''
  num.times do 
    val.length.even? ? val << '1' : val << '0'
  end
  val
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

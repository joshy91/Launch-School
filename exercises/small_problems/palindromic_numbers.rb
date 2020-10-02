def palindromic_number?(num)
  forward = num.digits
  forward == forward.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
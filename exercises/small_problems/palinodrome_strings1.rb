def palindrome?(line)
  forward = line.chars
  backward = line.chars.reverse
  forward == backward
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

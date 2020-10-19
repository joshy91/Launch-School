def double_consonants(str)
  dub_arr = str.chars.each_with_object([]) do |ele, arr|
    (!ele.match?(/[aeiou]/) && ele.match?(/[A-Za-z]/)) ? arr << ele * 2 : arr << ele
  end
  dub_arr.join('')
end

p double_consonants('String')
p double_consonants("Hello-World!") 
p double_consonants("July 4th") 
p double_consonants('') 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
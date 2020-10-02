def crunch(str)
  i = 0
  new_str = ''
  while i < str.length
    if i == 0
      new_str << str[i]
      i += 1
    else
      new_str << str[i] if str[i] != str[i-1]
      i += 1
    end
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
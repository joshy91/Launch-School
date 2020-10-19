def leading_substrings(str)
  arr2 = []
  for i in (0..(str.chars.size-1))
    arr2 << str.chars[0..i].join('')
  end
  arr2
end

def substrings(str) 
  arr = []
  for i in (0..(str.length-1))
    arr << leading_substrings(str[i..(str.length-1)])
  end
  arr.flatten
end

p substrings('abcde')

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
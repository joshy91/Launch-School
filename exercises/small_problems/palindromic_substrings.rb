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

def palindrome?(line)
  forward = line.chars
  backward = line.chars.reverse
  forward == backward && forward.size > 1
end

def palindromes(str)
  subs = substrings(str)
  arr = []
  subs.select {|sub| palindrome?(sub)}
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye') 
p palindromes('knitting cassettes') 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


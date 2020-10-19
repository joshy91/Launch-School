def leading_substrings(str)
  arr2 = []
  for i in (0..(arr1.size-1))
    arr2 << str.chars[0..i].join('')
  end
  arr2
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

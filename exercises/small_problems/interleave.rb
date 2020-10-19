def interleave(arr1,arr2)
  arr = []
  for i in (0..(arr1.length-1))
    arr << arr1[i]
    arr << arr2[i]
  end
  arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
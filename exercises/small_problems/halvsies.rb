def halvsies(arr)
  mid = (arr.length / 2.to_f).ceil - 1
  mid2 = mid + 1
  h1, h2 = [], []
  h1 = arr[0..mid] if !(arr[0..mid].empty?)
  h2 = arr[mid2..-1] if !(arr[mid2..-1].empty?)
  [h1,h2]
end

p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) 
p halvsies([5]) 
p halvsies([]) 

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
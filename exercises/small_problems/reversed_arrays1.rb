def reverse_array!(arr)
  mid = (arr.length / 2.to_f).ceil
  for i in Range.new(1,mid)
    arr[i-1],arr[-i] = arr[-i],arr[i-1] 
  end
  arr
end

p reverse_array!([1,2,3,4])
p reverse_array!(%w(a b e d c))
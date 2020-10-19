def reverse_array!(arr)
  arr2 = []
  mid = (arr.length / 2.to_f).ceil
  arr.each_with_index do |val, index|
    arr2.append(arr[-(index+1)])
  end
  num1, num2 = arr.object_id, arr2.object_id
  arr2
end

p reverse_array!([1,2,3,4])
p reverse_array!(%w(a b e d c))
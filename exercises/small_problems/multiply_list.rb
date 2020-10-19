def multiply_list(arr1,arr2)
  arr3 = []
  for i in (0..(arr1.length-1))
    arr3[i] = arr1[i]*arr2[i]
  end
  arr3
end

p multiply_list([3, 5, 7], [9, 10, 11])

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
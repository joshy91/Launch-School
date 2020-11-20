def bubble_sort!(arr)
  change = true
  while change
    arr2 = arr.clone
    arr.each_with_index do |ele,index|
      if (index < arr.count - 1) && (arr[index] > arr[index+1])
        arr[index], arr[index+1] = arr[index+1], arr[index]
        change = true
      end
    end
    change = false if arr2 == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
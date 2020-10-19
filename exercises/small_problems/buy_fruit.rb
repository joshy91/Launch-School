def buy_fruit(arr)
  arr.each_with_object([]) do |sub_arr, final_arr|
    sub_arr[1].times do
      final_arr << sub_arr[0]
    end
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

def repeater(str)
  dub_arr = str.chars.each_with_object([]) do |ele, arr|
    arr << ele * 2
  end
  dub_arr.join('')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
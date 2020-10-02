def swap(str)
  rev_str_arr = str.split(" ").map do |word|
    letters = word.chars
    first = letters.shift
    last = letters.pop
    letters.prepend(last)
    letters.append(first)
    letters.join('')
  end 
  rev_str_arr.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'


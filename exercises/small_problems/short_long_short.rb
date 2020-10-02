def short_long_short(word1, word2)
  long = word1.size > word2.size ? word1 : word2
  short = long == word1 ? word2 : word1
  short.concat(long,short)
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"


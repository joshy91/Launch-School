a = IO.read("pg84.txt")

def longest_sentence(txt)
  arr = txt.split(/[.!?]/)
  word_counts = arr.map {|sentence| sentence.split(' ').count}
  long = arr.select {|sentence| sentence.split(' ').count == word_counts.max }[0].strip
  return long, word_counts.max
end

p longest_sentence(a)

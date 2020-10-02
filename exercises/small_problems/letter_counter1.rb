def word_sizes(str)
  num_hash = {}
  str_arr = str.split(" ").map {|word| word.gsub(/[^a-zA-Z]+/, '')}
  str_arr.each do |word|
    num_hash.has_key?(word.size) ? num_hash[word.size]+=1 : num_hash[word.size]=1
  end
  num_hash
end

puts word_sizes('Four score and seven.') 
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') 
puts word_sizes("What's up doc?") 
puts word_sizes('') 

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
def reverse_words(sentence)
  new_sentence = sentence.split.map do |word|
    word.length >= 5 ? word.chars.reverse.join('') : word
  end
  new_sentence.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


def block_word?(str)
  letter1 = %w(B  X  D  C  N G  R  F  J H V   L  Z)
  letter2 = %w(O   K   Q   P   A  T   E   S   W   U I   Y   M)
  letters = ('a'..'z').to_a

  block_hash = {}
  letter1.each_with_index {|ele,index| block_hash[ele]=letter2[index]}
  letter2.each_with_index {|ele,index| block_hash[ele]=letter1[index]}

  str_chars = str.chars.map {|char| char.downcase }

  str_chars.each do |char| 
    if letters.include?(char) 
      letters.delete(char)
      letters.delete(block_hash[char])
    else
      return false
    end
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true


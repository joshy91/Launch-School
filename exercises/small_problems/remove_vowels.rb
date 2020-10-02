def remove_vowels(arr)
  arr.map do |word| 
    no_vowels = word.chars.keep_if {|v| v =~ /[^aeiouAEIOU]/}
    no_vowels.join('')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) 
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ)) 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
def staggered_case(str)
  string = []
  char_count = 1
  str.chars.each do |char| 
    if ('a'..'z').include?(char) || ('A'..'Z').include?(char)
      char_count.odd? ? string << char.upcase : string << char.downcase
      char_count += 1
    else
      string << char
    end
  end
  string.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS')
puts staggered_case('ignore 77 the 444 numbers')

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def center_of(str)
  mid = ''
  mid_val = str.chars.size / 2
  mid << str[mid_val-1] if str.chars.size.even?
  mid << str[mid_val]
end

p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x') 

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
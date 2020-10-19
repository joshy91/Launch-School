def swapcase(str)
  str.chars.map{|char| ('a'..'z').include?(char) ? char.upcase : char.downcase}.join('')
end

p swapcase('CamelCase') 
p swapcase('Tonight on XYZ-TV') 

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
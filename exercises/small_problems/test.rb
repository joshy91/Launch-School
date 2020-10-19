hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_hash = hsh.map do |k,v|
  return_val = v[:type]=='fruit' ? v[:colors] : v[:size].upcase
  return_val == v[:colors] ? return_val.map{|ele| ele.capitalize} : return_val
end

p new_hash
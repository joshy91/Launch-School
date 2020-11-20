def balanced?(str)
  paraen = str.delete("^(","^)")
  paraen_arr = paraen.chars.clone
  while (paraen_arr.index('(').to_i < paraen_arr.index(')').to_i)
    paraen_arr.delete_at(paraen_arr.index('('))
    paraen_arr.delete_at(paraen_arr.index(')'))
  end
  paraen_arr.empty?
end

p balanced?('What (is) this?') 
p balanced?('What is) this?') 
p balanced?('What (is this?') 
p balanced?('((What) (is this))?') 
p balanced?('((What)) (is this))?') 
p balanced?('Hey!') 
p balanced?(')Hey!(') 
p balanced?('What ((is))) up(') 


balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
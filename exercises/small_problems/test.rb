munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group(num)
  if num > 65
    'senior'
  elsif num > 18
    'adult'
  else
    'kid'
  end
end
    

munsters.values.each {|hsh| hsh["age_group"] = age_group(hsh["age"])}

puts munsters

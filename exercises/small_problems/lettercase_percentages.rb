def letter_case_count(str)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    if ('a'..'z').include?(char)
      case_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end
  case_hash
end

def letter_percentages(str)
  case_hash = letter_case_count(str)
  case_hash.transform_values {|value| (value.to_f / case_hash.values.sum) * 100}
end


p letter_percentages('abCdef 123') 
p letter_percentages('AbCd +Ef') 
p letter_percentages('123')
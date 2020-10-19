def get_grade(n1,n2,n3)
  avg = [n1,n2,n3].sum / 3.0
  case 
  when avg >= 90
    "A"
  when avg >= 80
    "B"
  when avg >= 70
    "C"
  when avg >= 60
    "D"
  else
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
require 'date'

def friday_13th(year)
  count = 0
  year_val = year + 1
  day = Date.new(year, 1,1)
  while year < year_val
    day = day.next_day 
    year = day.year
    count += 1 if day.day == 13 && day.friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

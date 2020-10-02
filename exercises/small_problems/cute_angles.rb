DEGREE = "\xC2\xB0"

def dms(degree)
  whole = degree.truncate
  deci = degree - whole
  min = ((deci*100)/100)*(60/1).round(3)
  min_whole = min.truncate
  min_deci = min - min_whole
  sec = ((min_deci*100)/100)*(60/1)
  sec_whole = sec.truncate
  # "%(" + sprintf("%d#{DEGREE}%02d'%02d\"", whole, min_whole,sec_whole) + ")"
  format(%(#{whole}#{DEGREE}%02d'%02d"), min_whole, sec_whole)
  # "%(#{whole}#{DEGREE}#{min_whole}'#{sec_whole}\")"
end

puts dms(30)
puts dms(76.73) 
puts dms(254.6) 
puts dms(93.034773) 
puts dms(0) 
puts dms(360) 


# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
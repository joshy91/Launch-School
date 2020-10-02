def start()
  print "+-"
end

def finish()
  print "-+"
end

def bar()
  print "|"
end

def print_in_box(str)
  start()
  str.length.times {print "-"}
  puts finish()
  bar()
  (str.length + 2).times {print " "}
  puts bar()
  bar()
  1.times {print " "}
  print(str)
  1.times {print " "}
  puts bar()
  bar()
  (str.length + 2).times {print " "}
  puts bar()
  start()
  str.length.times {print "-"}
  puts finish()
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
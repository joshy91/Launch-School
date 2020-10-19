def madlibs()
  libs = %w(noun verb adjective adverb)
  libs_arr = []
  libs.each do |lib|
    puts "Enter #{article(lib)} #{lib}:"
    libs_arr << gets.chomp
  end
  madlib = "Do you #{libs_arr[1]} your #{libs_arr[2]} #{libs_arr[0]} #{libs_arr[3]}? That's hilarious!"
end

def article(str)
  'aeiou'.include?(str[0]) ? "an" : "a"
end

p madlibs()
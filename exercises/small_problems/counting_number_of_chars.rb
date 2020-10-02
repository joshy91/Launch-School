puts "Please write word or multiple words: "
line = gets.chomp
puts "There are #{line.delete(" ").size} characters in \"#{line}\"."
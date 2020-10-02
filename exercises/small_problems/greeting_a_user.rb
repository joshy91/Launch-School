def prompt(message)
  puts "=> #{message}"
end

prompt("What is your name?")
name = gets.chomp

(name.chars.pop == '!') ? puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?") : puts("Hello #{name}")

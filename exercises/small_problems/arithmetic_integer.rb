def prompt(message)
  puts "=> #{message}"
end

def operation_result(num1, num2, operation)
  case operation
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  when '/'
    num1 / num2
  when '%'
    num1 % num2
  else
    num1**num2
  end
end

operations = %w[+ - * / % **]

prompt('Enter the first number:')
n1 = gets.chomp.to_i
prompt('Enter the second number:')
n2 = gets.chomp.to_i

operations.each do |op|
  puts "#{n1} #{op} #{n2} = #{operation_result(n1, n2, op)}"
end

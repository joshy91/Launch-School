class MinilangError < StandardError; end
class BadTokenError < MinilangError; end
class EmptyStackError < MinilangError; end

class Minilang
  def initialize(str)
    @str = str
    @valid = true
  end

  def update(str,reg,sta)
    case
    when str.to_i != 0 || str == '0'
      reg[0]=str.to_i
    when str == 'PUSH'
      sta.append(reg[0])
    when str == 'ADD'
      reg[0]=reg[0]+sta.pop
    when str == 'SUB'
      reg[0]=reg[0]-sta.pop
    when str == 'MULT'
      reg[0]=reg[0]*sta.pop
    when str == 'DIV'
      reg[0]=reg[0]/sta.pop
    when str == 'MOD'
      reg[0]=reg[0]%sta.pop
    when str == 'POP'
      reg[0]=sta.pop
    when str == 'PRINT'
      puts reg[0] if reg[0] != nil
      raise EmptyStackError, "Empty stack!" if reg[0] == nil
    when str == ''
      puts "Empty stack!"
    else
      raise BadTokenError, "Invalid token: #{str}"
      @valid = false
    end
  end

  def eval
    register = [0]
    stack = []
    @str.split(" ").each do |ele| 
      update(ele,register,stack) if @valid
    end
    rescue MinilangError => error
      puts error.message
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
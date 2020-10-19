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
		puts reg[0]
	end
end

def minilang(str)
	register = [0]
	stack = []
	str.split(" ").each {|ele| update(ele,register,stack)}
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)


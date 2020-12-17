def reverse_num(arry)
    reverse_arry = []
    num = 0
    arry.each do |elem|
      reverse_arry[num]=[]
        elem.each_char do |str|
          reverse_arry[num] << str if "123456789".include?(str)
        end
        num += 1
    end
 
  reverse_arry.map! {|x| x.reverse}
  p reverse_arry
  count = 0

  answer = arry.map do |elem|
      new_word = elem.chars.map do |str|
          if "123456789".include?(str)
              reverse_arry[count].shift
          else
              str
          end
      end
      count += 1
      new_word.join("")
  end
  answer
end

p reverse_num(["abd89c"])
p reverse_num(["RBi24klm1895","abd123def456"])

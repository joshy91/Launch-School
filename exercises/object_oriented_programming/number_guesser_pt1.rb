class GuessingGame
  def initialize
    @true_num = (1..100).to_a.sample
    @num_guesses = Math.log2(size_of_range).to_i + 1
    @got_num = false
  end

  def play
    @num_guesses.downto(1) do |n| 
      remaining_guesses(n)
      enter_number
      response
      break if @got_num
    end
    final_result
  end

  def remaining_guesses(int)
    puts "You have #{int} guesses remaining."
  end

  def enter_number
    loop do
      puts "Enter a number between 1 and 100: "
      val = gets.chomp
      if (1..100).to_a.include?(val.to_i)
        @num = val.to_i
        break
      else
        puts "Invalid guess."
      end
    end
  end

  def response
    @guess_result = @num <=> @true_num
    case @guess_result
    when -1
      puts "Your guess is too low"
    when 1
      puts "Your guess is too high"
    else 
      puts "That's the number!"
      @got_num = true
    end
  end

  def final_result
    @got_num ? puts("You won!") : puts("You have no more guesses. You lost!")
  end
end

game = GuessingGame.new
game.play
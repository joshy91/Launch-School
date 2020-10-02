CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

def prompt(message)
  puts("=> #{message}")
end

def interpret(choice)
  num = VALID_CHOICES.index(choice)
  CHOICES[num]
end

def win?(first, second)
  win_hash = { 'rock' => ['scissors', 'lizard'],
               'paper' => ['spock', 'rock'],
               'scissors' => ['lizard', 'paper'],
               'lizard' => ['spock', 'paper'],
               'spock' => ['rock', 'scissors'] }
  win_hash[first].include?(second)
end

def display_results(player, computer)
  if win?(interpret(player), computer)
    prompt("You won!")
    1
  elsif win?(computer, interpret(player))
    prompt("You loose!")
    2
  else
    prompt("Tie!")
    3
  end
end

def score_update(score_array, result)
  if result == 1
    score_array[0] += 1
  elsif result == 2
    score_array[1] += 1
  end
end

score_array = [0, 0]
prompt("Welcome to the Rock, Paper, Scissors, Lizard, Spock Game!
  First player to five points wins the game.")

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (#{CHOICES.join(', ')})")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = CHOICES.sample

  prompt("You chose: #{interpret(choice)}; Computer chose: #{computer_choice}")

  game_result = display_results(choice, computer_choice)

  score_update(score_array, game_result)

  prompt("Player Wins: #{score_array[0]}; Computer Wins: #{score_array[1]}")

  break if score_array[0] == 5 || score_array[1] == 5

  # prompt("Do you want to play again?")
  # answer = gets.chomp
  # break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!, Good bye!")

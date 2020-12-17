class Participant
  attr_reader :name, :cards

  def initialize(deck)
    @deck = deck
    @cards = Cards.new(@deck)
    @stay = false
  end

  def turn
    while @stay == false && !self.busted?
      self.choice
    end
  end

  def hit
    puts "#{@name} hits!"
    @cards.hand << @deck.deal
    puts "#{@name} cards are now: #{@cards.hand} for a total of #{self.total}"
  end

  def stay
    puts "#{@name} stays at #{self.total}"
    @stay = true
  end

  def total
    # cards = [['H', '3'], ['S', 'Q'], ... ]
    values = @cards.hand.map { |card| card[1] }

    sum = 0
    values.each do |value|
      if value == "A"
        sum += 11
      elsif value.to_i == 0 # J, Q, K
        sum += 10
      else
        sum += value.to_i
      end
    end

    # correct for Aces
    values.select { |value| value == "A" }.count.times do
      sum -= 10 if sum > 21
    end

    sum
  end

  def busted?
    self.total > 21
  end
end

class Player < Participant
  def initialize(deck)
    # what would the "data" or "states" of a Player object entail?
    # maybe cards? a name?
    super(deck)
    @name = "Player"
  end

  def choice
    player_turn = nil
    loop do
      puts "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      puts "Sorry, must enter 'h' or 's'."
    end
    player_turn == 'h' ? self.hit : self.stay
  end

  def <=>(other)
    puts "#{other.name} cards are now: #{other.cards.hand} for a total of #{other.total}"
    result = self.total <=> other.total
    result == 1 ? puts("You win!") : puts("You lose!")
  end

  def show
    puts "You have: #{@cards.hand[0]} and #{@cards.hand[1]}, for a total of #{self.total}."
  end
end

class Dealer < Participant
  def initialize(deck)
    # seems like very similar to Player... do we even need this?
    super(deck)
    @name = "Dealer"
  end

  def choice
    loop do
      break if self.total >= 17

      puts "Dealer hits!"
      @cards.new_card
      puts "Dealer's cards are now: #{@cards.hand[1..-1]} and ?"
    end
    self.stay
  end

  def show
    puts "Dealer has #{@cards.hand[0]} and ?"
  end
end

class Deck
  SUITS = ['H', 'D', 'S', 'C']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize
    @deck = SUITS.product(VALUES).shuffle
  end

  def deal
    @deck.pop
  end
end

class Cards
  attr_reader :hand

  def initialize(deck)
    @deck = deck
    @hand = []
    2.times {@hand << @deck.deal}
  end

  def new_card
    @hand << @deck.deal
  end
end

class Game

  def initialize
    @deck = Deck.new
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    if @player.busted? 
      puts "You busted! You lose!"
    else
    dealer_turn
      if @dealer.busted?
        puts "Dealer busted! You win!"
      else
        show_result
      end
    end
  end

  def deal_cards
    @dealer = Dealer.new(@deck)
    @player = Player.new(@deck)
  end

  def show_initial_cards
    @dealer.show
    @player.show
  end

  def player_turn
    @player.turn
  end

  def dealer_turn
    @dealer.turn
  end

  def show_result
    @player.<=>(@dealer)
  end
end

Game.new.start
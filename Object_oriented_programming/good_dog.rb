# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    puts "This object was initialized!"
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def speak
    "#{@name} says Arf"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
  # include Speak
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info
sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info
# class HumanBeing
#   include Speak
# end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name
# fido = GoodDog.new("Fido")
# puts fido.speak
# bob = HumanBeing.new
# bob.speak("Hello!")

# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts ''
# puts "---HumanBeing ancestors---"
# puts HumanBeing.ancestors

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

module Swimmable
  def swim
    puts "I'm swimming!"
  end
end

module Walkable
  def walk
    puts "I'm walking."
  end
end

module Climbable
  def climb
    puts "I'm climbing."
  end
end

class Animal
  include Walkable
  attr_accessor :name

  def a_public_method
    "Will this work? " + self.a_protected_method
  end
  # def initialize(name)
  #   @name = name
  # end
  def initialize
  end

  def speak
    puts "I'm an animal, and I speak!"
  end

  protected
  def a_protected_method
    "Yes, I'm protected!"
  end
end

class GoodDog
  DOG_YEARS = 7
  attr_accessor :name, :age
  # include Swimmable
  # include Climbable

  def initialize(n,a)
    self.name = n
    self.age = a
  end

  def speak
    super + " from GoodDog class"
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end    

class BadDog < Animal
  def initialize(age,name)
    super(name)
    @age = age
  end
end

class Cat < Animal
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end

class Fish < Animal
  include Swimmable
end

class Parent 
  def say_hi
    p "Hi from Parent."
  end
end

p Parent.superclass

class Child < Parent
  def say_hi
    p "Hi from Child."
  end
end

child = Child.new
child.say_hi

son = Child.new
son.send :say_hi

class Child
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end

  def instance_of?
    p "I am a fake instance"
  end
end

# lad = Child.new
# lad.send :say_hi

# c = Child.new
# p c.instance_of? Child
# p c.instance_of? Parent

heir = Child.new
heir.instance_of? Child

# class Mammal < Animal
# end

# class Dog < Mammal
#   include Swimmable
# end

# puts Animal.ancestors

# fido = Animal.new
# fido.speak
# fido.walk

# puts GoodDog.ancestors
# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new

# sparky.swim
# neemo.swim
# paws.swim

# sparky = GoodDog.new("Sparky", 4)
# p sparky.public_disclosure
# bear = Bear.new("black")
# p BadDog.new(2, "bear")
# paws = Cat.new
# puts sparky.name
# puts paws.speak

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# buddy.speak("Arf!")
# kitty.say_name("kitty")
# value = Mammal.some_out_of_place_method(4)
# value2 = Mammal::some_out_of_place_method(5)
# p value
# p value2

# fido = Animal.new
# puts fido.a_public_method
# fido.a_protected_method
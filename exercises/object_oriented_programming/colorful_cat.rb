class Cat
  COLOR = "pink"
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name} and I am a #{COLOR} cat!"
  end
end


kitty = Cat.new('Sophie')
kitty.greet
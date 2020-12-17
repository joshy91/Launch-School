class Shelter
  def initialize
    @owners = {}
  end
  def adopt(owner,pet)
    @owners.has_key?(owner) ? @owners[owner] << pet : @owners[owner] = [pet] 
    owner.number_of_pets += 1
  end

  def print_adoptions
    @owners.each do |key,value|
      puts "#{key.name} has adopted the following pets:"
      value.each do |val|
        puts "a #{val.animal} named #{val.name}"
      end
    end
  end
end

class Pet
  attr_reader :animal, :name
  def initialize(animal,name)
    @animal = animal
    @name = name
  end
end

class Owner
  attr_accessor :number_of_pets
  attr_reader :name 
  def initialize(name, num=0)
    @name = name
    @number_of_pets = num
  end
end

# Begin test case

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
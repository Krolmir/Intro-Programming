class Pet
  include Printer
  attr_reader :name, :type

  @@counter = 0  
    
  def initialize(type, name)
    @type = type
    @name = name
    @@counter += 1
  end

  def self.counter
    @@counter
  end
  
  def self.counter=(counter)
    @@counter = counter
  end
  
  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets
  attr_accessor :number_of_pets
  
  def initialize(name)
    @name = name
    @number_of_pets = 0
    @pets = []
  end
  
end

class Shelter
  attr_accessor :adoptions, :unadoptions
  attr_reader :name
  
  def initialize(name)
    @name = name
    @adoptions = []
    @unadoptions = []
  end
  
  def adopt(owner, pet_name)
    adoptions << owner unless adoptions.include?(owner)
    owner.number_of_pets += 1
    owner.pets << pet_name
    Pet.counter -= 1
  end
  
  def print_adoptions
    adoptions.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      puts owner.pets
      puts
    end  
  end
  
  def unadopted_pets
    puts "The #{name} has #{Pet.counter} unadopterd pets."
  end
end



butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new('Animal Shelter')
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
shelter.unadopted_pets

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."


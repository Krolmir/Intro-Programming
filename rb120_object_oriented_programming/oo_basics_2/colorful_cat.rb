# Problem: Create a class named Cat that prings a greeting when #greet is
#          invoked.
# Rules: the greeting should have the name and color .
#       - Color needs to be defined as a constant
# Cat class
class Cat
  COLOR = 'blue'.freeze

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name} and I'm a #{COLOR} car!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

# Expected output:

# Hello! My name is Sophie and I'm a purple cat!

module Walkable
  def walk
    puts "Let's go for a walk"
  end
end

class Cat
  include Walkable
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hi, I'm a cat and my name is #{name}!"
  end  
end

kitty = Cat.new("Sofia")
kitty.greet
kitty.name = "Luna"
kitty.greet
kitty.walk
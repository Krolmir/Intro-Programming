# Problem: Create a class name Cat that tracks the unmber of times a cat object
#          is created

class Cat
  @@cat_counter = 0
  
  def initialize
    @@cat_counter +=1
  end
  
  def self.total
    puts "The total amount of cats are #{@@cat_counter}."
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total

# Expected output:

# 2
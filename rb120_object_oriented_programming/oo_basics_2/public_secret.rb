# Problem: Create a class name Person with an instance variable name @secret.
#          Use a setter method to add a value tos ecret then use a getter method
#          to print1 secret

class Person
  attr_accessor :secret
  
  def initialize
    @secret = ''
  end
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret

# Expected output:

# Shh.. this is a secret!
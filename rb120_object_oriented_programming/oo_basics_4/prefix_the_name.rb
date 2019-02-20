# PRoblem: Add the proper accessor method so that name is returns with Mr.

class Person
  attr_reader :name
  
  def name=(first_name)
    @name = "Mr. " + first_name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name

# Expected output:

# Mr. James
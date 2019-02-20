class Person
  attr_accessor :name
 
# def initialize()
#   @name = ''
# end
 
  def name=(first_name)
   @name = first_name.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name

# Expected output:

# Elizabeth
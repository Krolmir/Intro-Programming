require 'pry'

class House
  attr_reader :price
  include Comparable
  
  def initialize(price)
    @price = price
  end
  
  def <=>(other)
    price <=> other.price
  end
  
  # def compare(second)
  #   if self.price < second.price
  #     "Home 1 is cheaper"
  #   else
  #     "Home 2 is more expensive"
  #   end
  # end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1


# and this output:

# Home 1 is cheaper
# Home 2 is more expensive
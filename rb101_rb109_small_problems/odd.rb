# Odd

# Input
#   - 1 integer (positive or negative or 0)
# Output
#   - returns tru if number's absolute value is odd

# Test Cases
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Data structure
# input = integer
# output = boolean

# Algorithm
# we will divide the number by 2 and if there is a remainder
# then we know it is a true odd.  If the input it 0 we automaticaly assume
# false.

def is_odd?(num)
  if num.zero?
    false
  elsif num.remainder(2).zero?
    false
  else
    true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

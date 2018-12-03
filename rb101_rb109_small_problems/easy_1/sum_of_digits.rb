# sum_of_digits.rb

# Input
#   - Positive integer
# Output
#   - Sum of the integers individual digits

# Notes
# Summing up the digits of a given integer

# Test Cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# Data structure
# input = Integer
# output = Integer

# Algorithm
# Use .digits to return an array of the digits
# Use that array to .each and then add a total sum

def sum(int)
  p int.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

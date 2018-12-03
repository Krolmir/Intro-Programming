# whats_my_bonus.rb

# Input
#   - poitive integer
#   - boolean
# Output
#   - 50% of the salaray or first integer*

# Notes
# if the boolean is true then to calculate the bonus we take 50% of the salaray
# if the boolean is false we return 0

# Test Cases
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# Data structure
# input = Integer + boolean
# output = integer

# Algorithm
# 1. check to see if the boolean is true or false
#    a. if true we take the integer and divide it by 2
#    b. if false return 0

def calculate_bonus(int, bonus)
  if bonus
    p int / 2
  else
    p 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false).zero?
puts calculate_bonus(50_000, true) == 25_000

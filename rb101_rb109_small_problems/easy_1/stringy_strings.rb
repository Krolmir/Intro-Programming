# stringy_strings.rb

# Input
#   - positive integer
# Output
#   - a string of 1's and 0's that the length = the number inputed above

# Notes
# Probably a loop that we set up to itterate .times based on the number inputed
# Set up an if statement putting a 0 if the times is currently even and 1 if odd

# Test Cases
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Data structure
# input = integer
# output = string
# counter = int

# Algorithm
# 1. loop through a .times with variable = inputed int
# 2. set counter to 1
# 3. if counter = odd number concatenate 1 to the string
# 4. if counter = even number concatenate 0 to the string
# 5. counter + 1
# 6. return string

def stringy(num, var = 1)
  str = ''
  if var.zero?
    num.times do |counter|
      str << '0' if counter.even?
      str << '1' if counter.odd?
    end
  elsif var == 1
    num.times do |counter|
      str << '1' if counter.even?
      str << '0' if counter.odd?
    end
  end
  p str
end

puts stringy(6, 0) == '101010'
puts stringy(9, 1) == '101010101'
puts stringy(4) == '1010'
puts stringy(7, 0) == '1010101'

# List of Digits

# Input
# - positive integer
# Output
# - returns a list (array maybe) of the digits in the number

# Test Cases
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Data structures
# Input
# - Integer
# Output
# - Array of numbers

# Algorithm
# - turn the input into a string
#   - split the string
#   - turn the string back into an int then save it in an array

def digit_list(num)
  num.to_s.split(//).map(&:to_i)
end

puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
puts digit_list(7) == [7] # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4] # => true

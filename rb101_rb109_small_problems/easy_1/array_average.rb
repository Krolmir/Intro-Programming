# array_average.rb

# Input
#   - Array of numbers (positive and never empty)
# Output
#   - Average of all numbers in array

# Notes
# we are assuming that all numbners entered are positive and the array is never
# empty

# Test Cases
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data structure
# input = Array of integers
# output = Integer

# Algorithm
# 1. Itterate through the array
#    a. add all numbers in the array as you iterate through it
# 2. divide the sum of all num,bers by array length

def average(array)
  sum = 0
  array.each { |value| sum += value }
  result = sum.to_f / array.length
  p result.floor(2)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

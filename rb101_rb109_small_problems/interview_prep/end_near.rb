# Problem: Write a method that returns the second last word in the string

# Input: String
# Output: String

# Steps:
# 1: Define a method and print out original string
# 2: split the string into an array
# 3: call [-2] on the array

def penultimate(str)
  p str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
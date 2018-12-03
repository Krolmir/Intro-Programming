# how_many.rb
# Method that counts the number of occurrences

# input
# - Array of strings
# output
# - looks like a string with a value

# Test cases
# vehicles = ['car', 'car', 'truck', 'car',
# 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# words = ['the', 'there', 'when', 'the', 'the',
# 'when', 'the', 'the', 'when', 'there']
# the => 5
# there => 2
# when => 3

# Data structures
# Input
# - array
# Output
# - hash

# Algorithm
# itterating through an array
# - first time the word comes up add it to a hash with value 1
# - everyother time a word thats already existed in the hash + 1 to value
# print hash

def count_occurrences(array)
  result = {}
  array.each do |x|
    result[x] = if !result.key?(x)
                  1
                else
                  result.fetch(x) + 1
                end
  end
  result.each do |k, count|
    p "#{k} => #{count}"
  end
end

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)
words = %w(the there when the the when the the when there)

count_occurrences(vehicles)
count_occurrences(words)

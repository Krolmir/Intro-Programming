# reverse_it.rb
# Write a method that takes one argument, a string, and returns a new
# string with the words in reverse order.

# Input
# - String
# Output
# - String

# need to reverse the words , index will be back words basicly
# going to be an array

# Testcases
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structures
# i/o
# - arrays

# Algorithm
# iterate through the array based on array length
# pop the last element and save it to a new array

def reverse_sentence(array)
  new_arr = []
  array = array.split(' ')
  new_arr.push(array.pop) while array.any?
  p new_arr.to_s.gsub(/"|\[|\,|\]/, '')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence_two(string)
  p string.split.reverse.join(' ')
end

puts reverse_sentence_two('') == ''
puts reverse_sentence_two('Hello World') == 'World Hello'
puts reverse_sentence_two('Reverse these words') == 'words these Reverse'
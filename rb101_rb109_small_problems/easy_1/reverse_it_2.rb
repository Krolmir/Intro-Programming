# reverse_it_2.rb

# Input
#   - String - one or more word
# Output
#   - The string inputed but with the letters reveresed if it has 5 or more
#     letters.

# Notes
# Spaces should be included when more than 1 word is present.
# Similar to the last assignment but this time the worlds are reversed not the
# whole sentence.

# Test Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data structure
# input = String (Turned into an array)
# output = String

# Algorithm
# 1. Going to take the input and turn it into an array
# 2. Itterate through that array to check for words .length and see if its
#    greater than 4
#    a. if word is greater than 4 reverse the word,
#    b. else return the word as is
# 3. Turn array back into a string and print to screen with proper format

def reverse_words(string)
  arr = string.split
  arr.each do |word|
    word.reverse! if word.length >= 5
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

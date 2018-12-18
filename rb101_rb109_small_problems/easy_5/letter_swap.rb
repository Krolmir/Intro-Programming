# Letter Swap
# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# Algorithm
# - split the string into sub strings
#   - for each substring
#     - swap characters at index[0] and index[substring.length - 1]
#     - join back the substring with a space

def swap(string)
  result = string.split(' ').map do |substring|
    str = substring.split('')
    first = str[0]
    str[0] = str[substring.length - 1]
    str[substring.length - 1] = first
    str.join
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

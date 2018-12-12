# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# Explicit rules
# - strings are always different length

# determines the longest of the 2 strings
# return the combination with the shorter string sandwiching the longer string

def short_long_short(str1, str2)
  if str1.length > str2.length
    p str2 + str1 + str2
  else
    p str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == 'abcdefghabc'
p short_long_short('abcde', 'fgh') == 'fghabcdefgh'
p short_long_short('', 'xyz') == 'xyz'

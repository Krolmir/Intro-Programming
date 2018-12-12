# Write another method that returns true if the string passed as an argument
# is a palindrome, false otherwise. This time, however, your method should
# be case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you
# wrote in the previous exercise.

# explicit rules
# - case-insensitive
# - ignore all non-alphanumeric characters

def palindrome?(*input)
  input.join.reverse.downcase.gsub(/[^0-9a-z]/i, '') ==
  input.join.downcase.gsub(/[^0-9a-z]/i, '')
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?(['madam']) == true
p palindrome?(['Madam']) == false          # (case matters)
p palindrome?(["madam", "i'm", "adam"]) == false # (all characters matter)
p palindrome?([3, 5, 6, 6, 5, 3]) == true
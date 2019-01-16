# In the easy exercises, we worked on a problem where we had to count the
# number of uppercase and lowercase characters, as well as characters that were
# neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

require 'pry'

def letter_percentages(str)
  new_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  upper = 0.0
  lower = 0.0
  neither = 0.0
  total = 0
  
  str.split('').each do |char|
    if char == char.upcase && char.match(/[A-Z]/)
      upper += 1
      total += 1
    elsif char = char.downcase && char.match(/[a-z]/)
      lower += 1
      total += 1
    else
      neither += 1
      total += 1
    end
  end
  # binding.pry
  new_hash[:uppercase] = (upper / total) * 100
  new_hash[:lowercase] = (lower / total) * 100
  new_hash[:neither] = (neither / total) * 100
  p new_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
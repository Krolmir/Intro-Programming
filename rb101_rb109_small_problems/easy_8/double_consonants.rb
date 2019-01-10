# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

def double_consonants(str)
  new_str = ''
  
  str.each_char do |char|
    if char.downcase =~ /[aeiou\d\W]/
      new_str += char
    else
      new_str += char + char
    end
  end

  p new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
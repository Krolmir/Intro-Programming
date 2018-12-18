# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Create empty hash
# itterate through the word_length array
#  - if word_length is not == to a key in hash create key
#  - else key = value + 1   


def word_length_array(string)
  arr = string.split
  arr.map do |word|
    word.length
  end
end
  

def word_sizes(string)
  temp = word_length_array(string)
  hsh = {}

  temp.each do |num|
    if hsh.has_key?(num)
      hsh[num] += 1
    else
      hsh[num] = 1
    end
  end

  p hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
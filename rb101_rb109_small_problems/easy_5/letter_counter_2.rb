# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

def word_length_array(string)
  arr = string.split
  arr.map do |word|
    word.gsub(/[^0-9a-z ]/i, '').length
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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

LETTERS = [ ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
            ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
            ['V', 'I'], ['L', 'Y'], ['Z', 'M'] ]

def block_word?(str)
  result = true
  LETTERS.each do |combo|
    if str.upcase.include?(combo[0]) && str.upcase.include?(combo[1])
      result = false
    end  
  end

  result
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
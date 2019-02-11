=begin

input: string of words
output: hash

steps: 
1: define a method and print out the original string
2: split the string into an array and itterate over it counting the length
   of each word
3: store the values of each lengh in the hash
    - if value exists add 1 to the value of that key
    - else create new key and set value 1
4: return hash

=end

def word_sizes(str)
  new_hash = {}
  arr = str.split(' ')
  arr.each do |word|
    if new_hash.include?(word.size)
      new_hash[word.size] += 1
    else
      new_hash[word.size] = 1
    end
  end

  p new_hash
end



word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') 
           # == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") # == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') # == {}
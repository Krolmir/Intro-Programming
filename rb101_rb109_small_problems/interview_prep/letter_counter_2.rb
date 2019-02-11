=begin 

steps:
1: use gsub or delete to get rid of all the non alpha characters

=end


def word_sizes(str)
  new_hash = {}
  arr = str.split(' ')
  
  arr.each do |word|
    word.gsub!(/\W/, '')
    if new_hash.include?(word.size)
      new_hash[word.size] += 1
    else
      new_hash[word.size] = 1
    end
  end

  new_hash
end

p word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") # == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') # == {}

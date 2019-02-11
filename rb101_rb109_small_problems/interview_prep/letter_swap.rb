=begin

input: string of words
output: string of words

steps:

1: define a method and pring the string
2: split the string and save it to a variable
3: itterate through the string 
    - this is wear letter swap logic happens
    
4: return new string

=end

def swap(str)
  arr = str.split
  
  new_arr = arr.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  new_arr.join(' ')
end

  

p swap('Oh what a wonderful day it is') # == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') # == 'ebcdA'
p swap('a') # == 'a
# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

def interleave(array1, array2)
  counter = 0
  new_array = []
  limit = array1.size
  
  loop do
    new_array << array1.shift
    new_array << array2.shift
    counter += 1
    break if counter == limit
  end
  
  p new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

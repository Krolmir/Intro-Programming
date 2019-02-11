# Problem: Take 2 arrays and combine them in alternating fashion

# Input: 2 Arrays
# Output: 1 Array

# Steps:
# 1: Define a method with 2 arguments
# 2: Initialize a new array
# 3: Create a loop that we will itterate through array.size times
#   - Use counter as idx and add elements from each of the arrays
# 4: return New array

def interleave(arr_1, arr_2)
  new_arr = []
  count = 0
  
  loop do
    break if count == arr_1.size
    
    new_arr << arr_1[count]
    new_arr << arr_2[count]
    count += 1
  end
  
  p new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
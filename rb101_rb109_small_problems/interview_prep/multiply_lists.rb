# Problem: Write a method that returns a new array with the product of the
#          numbers at the same indexes

# Input: 2 Arrays
# Output: Array

# Steps:
# 1: define a method and print out the original arrays
# 2: intialize a result array []
# 3: itterate through the first array. Can use map here and omit the second step
#    On second thought i dont think you can map with index
#   - Multiply the 2 mumbers based on element and arr2[index] and append to
#     result array
# 4: return the Result array

def multiply_list(arr_1, arr_2)
  result_arr = []
  
  arr_1.each_with_index do |num, idx|
    result_arr << num * arr_2[idx]
  end
  
  p result_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
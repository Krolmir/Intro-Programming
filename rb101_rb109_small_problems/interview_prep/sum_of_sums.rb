# Problem: Write a method that sums up the array in steps. Step 1 sum of idx 1,
# step 2 sum of idx 1..2 and so on. then sum up all those sums

# Input: Array of numbers
# Output: Integer

# Steps:
# => Define a method that take an array as an argument
# => Initialize a new_array. 
# => Itterate over the original array with eacfh_with _index and assign it to 
#    the new array
#   => call a reduce on arr[0..element[idx]] and append to new_array
# =>Return the new array


def sum_of_sums(arr)
  new_arr = []
  
  arr.each_with_index do |num, idx|
    new_arr << arr[0..idx].reduce(:+)
  end
  
  p new_arr.reduce(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
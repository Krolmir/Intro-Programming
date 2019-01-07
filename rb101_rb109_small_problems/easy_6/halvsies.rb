# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half Array.

# We need to split the array down the middle
# if the array has an odd number of values its added to the first half


def halvsies(array1)
  num = (array1.length / 2.0).ceil
  num = array1.length - num
  array2 = []
  
  loop do
    break if num == 0
    array2 << array1.pop
    num -= 1
  end
  
  big_array = [array1, array2.reverse!]
  big_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
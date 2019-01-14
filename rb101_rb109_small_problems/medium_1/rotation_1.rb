# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(arr)
  new_arr = arr
  new_arr = new_arr.drop(1)
  new_arr.push(arr.first)
  p new_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  str = str.split('')
  str = str[1..-1] + str[0]
  str.join
end

p rotate_string('Hello')
p rotate_string('Hello Mr Nick ')
p rotate_string('Hello World')

# input: array of numbers
# output: new array

# Steps:
# 1: Define a method and output the original array first
# 2: initialize a new array, set to []
# 3: itterate through the original array
#    -  Some rotatition logic
# 4: return new array

def rotate_array(arr)
  new_arr = []
  arr.each_with_index do |value, idx|
    new_arr << value if idx != 0
  end

  new_arr << arr[0]

  new_arr
end

# p rotate_array([7, 3, 5, 2, 9, 1]) # == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) # == ['b', 'c', 'a']
# p rotate_array(['a']) # == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) # == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

#---------------------------------------------------------------------
# input: string
# Output: Newstring

# steps:
# 1: define a method and output the original string
# 2: converrt the string to an array
# 3: call the rotate array method
# 4: convert the array into a string
# 5: return the new string

def rotate_string(str)
  rotate_array(str.split('')).join
end

# p rotate_string('hello')
# p rotate_string('hello WOrld')
# p rotate_string('hello I love it when you call me big papa')

#---------------------------------------------------------------------
# input: integer
# output: integer

# Steps:
# 1: defing a method and pring original number
# 2: connvert the integer into an array .digits
# 3: call the rotate array method
# 4: return the return with .to_i

def rotate_int(num)
  rotate_array(num.digits.reverse).join.to_i
end

p rotate_int(23425)
p rotate_int(5155)
p rotate_int(231325)
p rotate_int(7)

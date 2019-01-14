# Write a method that can rotate the last n digits of a number. For example:

def rotate_array(arr)
  new_arr = arr
  new_arr = new_arr.drop(1)
  new_arr.push(arr.first)
end

def rotate_rightmost_digits(num, n)
  arr = num.to_s.split('')
  left_arr = arr[0..-n - 1]
  right_arr = arr[-n..arr.length - 1]
  right_arr = rotate_array(right_arr)
  
  result = left_arr << right_arr
  p result.flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


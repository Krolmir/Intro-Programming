# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

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
  result.flatten.join.to_i
end

def max_rotation(num)
  count = num.to_s.length
  new_number = num

  loop do
    break if count == 0

    p new_number = rotate_rightmost_digits(new_number, count)
    count -= 1

  end
  p new_number

end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

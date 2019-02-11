# Problem: Write a method that takes an array of numbers an Multiplies them,
#          then divides them by arr length. Finally round to 3 decimal places

# Input: Array of Numbers
# Output: Float with 3 Decimals

# Steps:
# 1: Define a method and print out the original array
# 2: initialize a total variable = 0
# 2b: multiply all the numbers in the array. use inject or reduce
# 3: divide 2b by arr.length.to_f
# 4: format the output to 3 dec

def show_multiplicative_average(arr)
  format("%.3f",(arr.reduce(:*)) / arr.length.to_f)
end

p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([6])
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
# Problem: define a method that take a number greater than 0
#          Create a range from 1 - number
#          find all pairs that when multiplied == the sum of the range minue
#          the pair
# Example: removNb(5) = nil
#          removNb(26) = [[15, 21], [21, 15]]
# Input: Integer greater than 0
# Output: Array of pairs of numbers, or nil if empty
# Steps:
# - initialize a variable to store the range from 1-number as an array
# - initialize a results array
# - sum up the range and store it as total


# itterate over the range|c|
# - initialize first_num assign it to range_array[c]
# - itterate over the range_array |i|
#   - check if first_num * range_array == total - (first_num +range_array[i])
#     - result_array << [first_num, range_array[i]]
# return result_arr

# custom loops to itterate through. 
# first loop arr.each_with index
# second loop do until no more values

# itterate over arr.each with index
#   itterate over a loop
#     -initialize a counter = idx
#     - check if first_num * arr[counter] == total - (first_num + array[counter])
#       - result_array << [first_num, arr[counter]]
#     - break if counter == arr.size
#     - counter += 1
#     

def removNb(n)
  arr = (1..n).to_a
  result_arr = []
  total = arr.reduce(:+)

  arr.each_with_index do |first_num, idx|
    counter = idx + 1
    loop do
      if first_num * counter == total - (first_num + counter)
        result_arr << [first_num, counter]
        result_arr << [counter, first_num]
        return result_arr
      end
      
      break if counter == arr.size
      counter += 1
    end
  end
  result_arr
  # arr.each do |first_num|
  #   arr.each do |second_num|
  #     if first_num * second_num == total - (first_num + second_num)
  #       result_arr << [first_num, second_num]
  #     end
  #   end
  # end
end

# Test Cases
p removNb(26) # = [[15, 21], [21, 15]]
# p removNb(100) # = []
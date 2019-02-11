# Problem: Write a method that seraches for all multiple between 3 or 5 
#          between 1 and the number
#          Computes the sum of all the selected numbers

# Input: Number
# Output: Number

# Steps:
# => Define a method with 1 number as the argument
# =>initialize a results array
# => itterate from 1..number
#   => check if current itteration number % 3 == 0
#     => append number to new array  
#   => check if current itteration number % 5 == 0
#     => append number to new array
# => invoke.uniq on new array then invoke .reduce(:+)
# return the result of line above

def multisum(num)
  result_arr = []
  
  (1..num).to_a.each do |current_num|
    if current_num % 3 == 0
      result_arr << current_num
    elsif current_num % 5 == 0
      result_arr << current_num
    end
  end
  p result_arr.reduce(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
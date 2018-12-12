# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.

# Notes
# Input will be 6 seperate numbers (entered from the user)
# first 5 saved as an array
# 6th used to search that array

def prompt(message)
  p "=> #{message}"
end

prompt 'Enter the 1st number:'
num_one = gets.chomp.to_i

prompt 'Enter the 2nd number:'
num_two = gets.chomp.to_i

p "#{num_one} + #{num_two} = #{num_one + num_two}"
p "#{num_one} - #{num_two} = #{num_one - num_two}"
p "#{num_one} * #{num_two} = #{num_one * num_two}"
p "#{num_one} / #{num_two} = #{num_one / num_two}"
p "#{num_one} % #{num_two} = #{num_one % num_two}"
p "#{num_one} ** #{num_two} = #{num_one**num_two}"

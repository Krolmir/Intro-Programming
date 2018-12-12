# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 
#numbers.

# Notes
# Input will be 6 seperate numbers (entered from the user)
# first 5 saved as an array
# 6th used to search that array

def prompt(message)
  p "=> #{message}"
end

num_array = []

prompt "Enter the 1st number:"
num_array << gets.chomp.to_i

prompt "Enter the 2nd number:"
num_array << gets.chomp.to_i

prompt "Enter the 3rd number:"
num_array << gets.chomp.to_i

prompt "Enter the 4th number:"
num_array << gets.chomp.to_i

prompt "Enter the 5th number:"
num_array << gets.chomp.to_i

prompt "Enter the 6th number:"
search_num = gets.chomp.to_i

if num_array.include?(search_num)
  prompt "The number #{search_num} appears in #{num_array}"
else
  prompt "The number #{search_num} does not appear in #{num_array}"
end

# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

def prompt(message)
  p "=> #{message}"
end

def format_number(number)
  if number > 999
    number = number.to_s.split('.')
    number[0].reverse!.gsub!(/(\d{3})(?=\d)/, '\\1,').reverse!
    number.join('.')
  else
    number
  end
end  

prompt "Please enter an integer greater than 0:"
input_num = gets.chomp.to_i

prompt "Would you like to determine the sum or product of all numbers between"\
       " 1 and #{input_num}? Enter 's' to computer the sum, 'p' to compute"\
       "the product."
operation = gets.chomp

if operation == 's'
    prompt "The sum of the integers between 1 and #{input_num} is "\
  "#{format_number((1..input_num).reduce(:+))}"
elsif operation == 'p'
  prompt "The product of the integers between 1 and #{input_num} is "\
  "#{format_number((1..input_num).reduce(:*))}"
end

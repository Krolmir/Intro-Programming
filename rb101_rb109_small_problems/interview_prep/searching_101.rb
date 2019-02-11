=begin 

input: 6 numbers from user
output: string 

steps:

1: set up input messages
2: set up loop to handle first 5 inputs
3: store the numbers entered in an array
4: add validation input
5: check if the last num is in the array

=end


NUMBER_ARR = ["1st", "2nd", "3rd", "4th", "5th"]

def check_numbers(num, check_num)
  num.include?(check_num) ? 'appears' : 'does not appear'
end

numbers = []

def is_valid_number(num)
  true
end

NUMBER_ARR.each do |num|
  puts "==> Enter the #{num} number:"
  input_number = gets.chomp.to_i
  numbers << input_number
end

puts "Enter the last number:"
check_num = gets.chomp.to_i

puts "The number #{check_num} #{check_numbers(numbers, check_num)} in "\
     "#{numbers}"
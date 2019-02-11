=begin

input: 2 positive integers
output : all operations done to the 2 numbers .

steps : 
1: set up prompts
2: save input as variables
3: check input validation
=end

def valid_number?(num)
  if num =~ /^-?[0-9]+$/
    true
  end
end

puts "Enter the first number:"
number_1 = gets.chomp

loop do
  if valid_number?(number_1)
    number_1 = number_1.to_i
    break
  else
    puts "Invalid input. Try again:"
    number_1 = gets.chomp
  end
end

puts "Enter the second number:"
number_2 = gets.chomp

loop do
  if valid_number?(number_2)
    number_2 = number_2.to_i
    break
  else
    puts "Invalid input. Try again:"
    number_2 = gets.chomp
  end
end

# Addition, subtraction, multiplocation, division, modulos, squared

puts "==> #{number_1} + #{number_2} = #{number_1 + number_2}"
puts "==> #{number_1} - #{number_2} = #{number_1 - number_2}"
puts "==> #{number_1} * #{number_2} = #{number_1 * number_2}"
puts "==> #{number_1} / #{number_2} = #{number_1 / number_2}"
puts "==> #{number_1} % #{number_2} = #{number_1 % number_2}"
puts "==> #{number_1} ** #{number_2} = #{number_1 ** number_2}"
# Write a method that takes a positive integer or zero, and converts it to a
# string representation.
# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. 

# break up integer into single digits
# changeds each digit to a letter based on the constant digit
# join the string

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
}

def signed_integer_to_string(number)
  if number == 0
    integer_to_string(number)
  elsif number < 0
    '-' << integer_to_string(number)
  else
    '+' << integer_to_string(string)
  end
end

def integer_to_string(number)
  string = number.digits.reverse.each { |num| DIGITS[num] }
  string.join
end
    
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
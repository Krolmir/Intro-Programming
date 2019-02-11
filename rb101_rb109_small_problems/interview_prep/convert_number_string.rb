=begin

input: integer
output: string

steps:
1: create a hash with all the numbers as keys and all the values as strings
2: initialize a results array varibale that will store each string digit
3: turn the number into an array. Itterate through the array
=end

def integer_to_string(num)
  number = {}
  10.times { |n| number[n] = n.to_s }
  
  result = ''
  new_num = num
  loop do
    new_num, remainder = new_num.divmod(10)
    
    result.prepend(number[remainder])
    break if new_num == 0
  end
  result
end

integer_to_string(4321) # == '4321'
integer_to_string(0) # == '0'
integer_to_string(5000) # == '5000'

=begin

input: number
output: String

steps: 
1 :invoke the integer to string method on our number deleting the sign, or 
  use .abs maybe

=end


def signed_integer_to_string(num)
  result = integer_to_string(num.abs)
  if num > 0
    '+' + result
  elsif num < 0
    '-' + result
  else
    result
  end
end

p signed_integer_to_string(4321) # == '+4321'
p signed_integer_to_string(-123) # == '-123'
p signed_integer_to_string(0) # == '0'
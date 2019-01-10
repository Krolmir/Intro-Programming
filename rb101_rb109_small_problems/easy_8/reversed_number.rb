# Write a method that takes a positive integer as an argument and returns that
# number with its digits reversed.

def reversed_number(num)
  new_num = num.to_s.split('')
  result = []

  loop do
    break if new_num.length.zero?
    result << new_num.pop
  end
  p result.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

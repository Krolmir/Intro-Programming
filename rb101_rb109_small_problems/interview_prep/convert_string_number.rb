=begin

input: String
output: number

steps: 
1: define a method output the string
2: initialize a contsant hash for all numbers 0 - 9

=end

def string_to_integer(str)
  numbers = {}
  10.times { |idx| numbers[idx.to_s] = idx }
  result = []

  str.chars.each { |char| result << numbers[char] }
  
  total = 0 
  result.each do |num|
    total = 10 * total + num
  end

  total
end

string_to_integer('4321') # == 4321
string_to_integer('570') # == 570

def hexadecimal_to_integer(str)
  numbers = {}
  10.times { |idx| numbers[idx.to_s] = idx }
  ('a'..'f').to_a.each_with_index { |char, idx| numbers[char] = idx + 10 }
  result = []
  
  str.downcase.chars.each { |char| result << numbers[char] }
  
  total = 0
  result.each { |num| total = total * 16 + num } 
  total
end

hexadecimal_to_integer('4D9f') # == 19871

def string_to_signed_integer(str)
  result = string_to_integer(str.delete('+-'))
  
  if str[0] == '-'
    -result
  else
    result
  end
end

p string_to_signed_integer('4321') # == 4321
p string_to_signed_integer('-570') # == -570
p string_to_signed_integer('+100') # == 100
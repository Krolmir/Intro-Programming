=begin

input: word or multiple words (string)
output: number of character. (excluding spaces)

steps:

1: set up input of string
2: split the string into an array
3: then cxall .chars
4: set up output statement

=end

puts "Please write a mord or multiple words:"
string = gets.chomp

arr = string.split(' ')
p arr

result = 0

arr.each do |word|
  result += word.length
end

puts "There are #{result} characters in \"#{string}\"."
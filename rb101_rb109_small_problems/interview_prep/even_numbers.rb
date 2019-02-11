=begin
output: all even numbers 1- 99 inclusive

steps:

1: puts all numbers 1-99

=end

(1..99).each do |number|
  puts number if number.even?
end

number_range = (1..99).to_a
arr = number_range.select { |num| num % 2 == 0 }
arr.each { |num| p num }
=begin
output: all odd numbers 1- 99 inclusive

steps:

1: puts all numbers 1-99

=end

(1..99).each do |number|
  puts number if number.odd?
end

number_range = (1..99).to_a
number_range.select { |num| num % 2 == 1 }
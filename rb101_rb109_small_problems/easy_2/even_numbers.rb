# Print the even numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

(1..99).each do |n|
  p n if n.even?
end

range_array = (1..99)
even_array = range_array.select { |n| n.even? }
even_array.each { |n| p n }

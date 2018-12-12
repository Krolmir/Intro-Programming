# Print all odd numbers from 1 to 99, inclusive. All numbers should be
# printed on separate lines.

(1..99).each do |n|
  p n if n.odd?
end

range_array = (1..99)
odd_array = range_array.select { |n| n.odd? }
odd_array.each { |n| p n }

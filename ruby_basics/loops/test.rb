numbers = []
count = 1

while numbers.count < 100
  # ...
  numbers << count
  count += 1
end

puts numbers.sample(5)
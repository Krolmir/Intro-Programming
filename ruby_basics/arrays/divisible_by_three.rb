numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |v| v % 3 == 0 }

p divisible_by_three
# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

def find_fibonacci_index_by_length(num)
  num1 = 1
  num2 = 1
  num_array = [1, 1]

  loop do
    break if num == num_array.last.to_s.length
    num_array << num1 + num2
    # temp = num_array.length - 2
    num1 = num_array[num_array.length - 2]
    num2 = num_array.last
  end

  num_array.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

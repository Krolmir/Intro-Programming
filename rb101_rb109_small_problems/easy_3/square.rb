# Create a method that takes two arguments, multiplies them together,
# and returns the result.

def multiply(num_1, num_2)
  num_1 * num_2
end

def square(num_1)
  multiply(num_1, num_1)
end

def power(num_1, n)
  result = 1
  (n).times { p result = multiply(result, num_1) }
  result
end  

p square(5) == 25
p square(-8) == 64

p power(3, 3)
p power(3, 4)
p power(5, 1)
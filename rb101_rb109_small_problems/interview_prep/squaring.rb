=begin

input: number
output: square root

steps

1: define method with 1 argument and print the number
2: invoke the multiply method in the square method with arguments num as both

Bonus:
1: pass in anohter parameter to our square method to determin how many times
   we are going to invoke the multiply method
2: leep a running total
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num, power)
  result = num
  count = power - 1
  count.times { result = multiply(result, num) }
  result
end

p square(5, 3) # == 25
p square(-8, 4) # == 64
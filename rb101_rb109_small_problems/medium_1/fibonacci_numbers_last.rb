# Fibonacci Numbers (Last Digit)
# In the previous exercise, we developed a procedural method for computing the
# value of the nth Fibonacci numbers. This method was really fast, computing the
# 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.

require 'pry'

def fibonacci_last(n)
  return 1 if n == 1 || n == 2
  
  total = 0
  count = 2
  num1 = 1
  num2 = 1
  
  loop do
    break if count == n
    
    total = num1 + num2
    num1 = num2
    num2 = total
    
    # binding.pry
    
    count += 1
  end
  p total.to_s.split('').last.to_i
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
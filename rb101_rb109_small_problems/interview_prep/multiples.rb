=begin

input: number
output: number - sum of all numbers between 1 and number that are mutiples 
                 of 3 and 5

Steps:
1: p all multiples of 3 of the number
    - change number into an array based on 1 - number
    - itterate through array and select all multiples of 3


=end

def multisum(number)
  arr = (1..number).to_a.select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  
  arr.reduce(:+)
end

p multisum(3) # == 3
p multisum(5) # == 8
p multisum(10) # == 33
p multisum(1000) # == 234168
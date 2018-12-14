# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# Explicit Rules
# You may assume that the number passed in is an integer greater than 1.

# searches all multiples of 3 and 5 between 1 - n .
# computes the sum of all multiples

# all multiples will be saved in an array

# def multiples_3(num)
#   total = 0
#   multiples = 0

#   loop do
#     if num - (multiples + 3) >= 0
#       total += (multiples += 3)
#       # p "total of 3 #{total}"
#       # p "multiples of 3 #{multiples}"
#     else
#       break
#     end
#   end
  
#   p total
# end

# def multiples_5(num)
#   total = 0
#   multiples = 0
  
#   loop do
#     if num - (multiples + 5) >= 0
#       total += (multiples += 5)
#       p "total of 5 #{total}"
#       p "multiples of 5 #{multiples}"
#     else
#       break
#     end
#   end
  
#   p total
# end

# def multisum(num)
#   p multiples_5(num) + multiples_3(num)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# Try again

def multiple?(num, divisor)
  num % divisor == 0
end

def multisum(num)
#  running_total = 0
  
  (1..num).inject(0) { |sum, n| multiple?(n, 3) ||
  multiple?(n, 5) ? sum + n : sum }
     
    #  if multiple?(n, 3) || multiple?(n, 5)
  
  # (1..num).each do |i|
  #   if multiple?(i, 3) || multiple?(i, 5)
  #     running_total += i
  #   end
  # end
  
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# def multisum(num)
#   1.upto(num).inject(0) { |sum, i| (multiple?(i, 3) || multiple?(i, 5)) ? sum + i : sum }
# end
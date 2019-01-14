# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may
# assume that the argument will always be an odd integer.

def diamond(num)
  count = 1
  stars = 1
  spaces = 1
  
  loop do
  
    puts (' ' * (num - spaces)) + ('*' * stars)
    break if count == num
    
    if count <= (num / 2)
      stars += 2
      spaces +=1
    else
      stars -= 2
      spaces -= 1
    end
    
    count += 1
  end
end




diamond(1)

# *

diamond(3)

#  *
# ***
#  *

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
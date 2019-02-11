#Problem: Write a method that displays a diamond like below. 4 Point diamond
#         n x n grid  Has to be odd

# Input: odd integer
# Output: a pretty diamond made from strins

# Steps:
# 1: Defime a method that takes 1 argument (num)
# 2: Print out n diamons n times to start
# 3: print out 1 to n diamonds increasing by 2 everytime
# 4: print out n to 1 diamonds decreasing by 2 everytime
# 5: add white spaces before the proper diamonds
#    - some stufff

def diamond(num)
  return puts "*" if num == 1
  
  counter = (num / 2)
  middle_space = 1
  
  puts " " * counter + "*"
  counter -= 1
  
  (num / 2).times do 
    puts " " * counter + "*" + " " * middle_space + "*"
      middle_space += 2


    counter -= 1
  end
  
  counter = 1
  middle_space -= 4
  
  ((num / 2) -1).times do 
    puts " " * counter + "*" + " " * middle_space + "*"
    middle_space -= 2
    counter += 1
  end
  puts " " * counter + "*"
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
diamond(19)
diamond(5)
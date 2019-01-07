# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

require 'pry'

def triangle(number)
  i = number
  t = 1
  
  loop do
    break if i == 0
    str = ''
    i -= 1
       
    i.times do
      str += ' '
    end 
    t.times do
      str += '*'
    end
    t += 1

    puts str
  end
end




triangle(5)

#     *
#   **
#   ***
# ****
# *****
triangle(9)

#         *
#       **
#       ***
#     ****
#     *****
#   ******
#   *******
# ********
# *********
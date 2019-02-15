# Problem: Write a program that fills and array based on the number of tower
#          levels.  If its 3 then we fill the array 3 times and each time the
#          will have the same length, but with possible space before and after
# Example: If we have tower builder(4) then our result should look like this
#        ['   *   ', '  ***  ', ' ***** ', '*******']
# Rules: the length of each array string will be the number * 2 - 1 invoked in
#         our method.  If we invoke tower_builder(4) then 4 * 2 - 1 = 7
#        - need equal spaces before and after each level
#        - first level will have 1 star, every level after is + 2
#        - first level will have n - 1 spcaes , then subtract 1 space per
#        - level. This is spaces per side
# Input: integer always greter than 0
# Output: array of strings
# Steps: 
# => Define a method that takes an integer as an argument
# => initialze an array
# => initialze star_counter = 1
# => loop/itterate num.times |counter|
#  => str = ' ' * (counter) + '*' * star_counter 
#  => arr << str
#  => star_counter += 2
# return arr


def tower_builder(n_floors)
  arr = []
  star_counter = 1
  space_counter = n_floors - 1
  n_floors.times do |num|
    arr << ' ' * space_counter + '*' * star_counter + ' ' * space_counter
    star_counter += 2
    space_counter -= 1
  end
  arr
end

tower_builder(1) # ['*'], "1 floor")
tower_builder(2) # [' * ', '***'], "2 floors")
tower_builder(3) # ['  *  ', ' *** ', '*****'], "3 floors")

# star

def star(n)
  initial_space = 0
  spaces = n / 2 - 1

  loop do
    puts "#{' ' * initial_space}*#{' ' * spaces}*#{' ' * spaces}*"

    break if spaces.zero?
    initial_space += 1
    spaces -= 1
  end
  
  puts '*' * n
  
  loop do
    puts "#{' ' * initial_space}*#{' ' * spaces}*#{' ' * spaces}*"

    break if initial_space == 0
    initial_space -= 1
    spaces += 1
  end
  
end

star(7)
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

star(15)
star(25)

=begin

input: String
output: a box with text in it :p

steps:
1: Define a method and print the string
2: Create the box


=end

def print_in_box(str)
  puts "+-#{'-' * str.size}-+"
  puts "| #{' ' * str.size} |"
  puts "| #{str} |"
  puts "| #{' ' * str.size} |"
  puts "+-#{'-' * str.size}-+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# Write a method that will take a short line of text, and print it within a box.

# string.length + 2
# string wil be centered 1 space before 1 space after
# 5 line p statement

def print_in_box(string)
  top = '+-'
  top_inner = '| '
  middle = '| '
  bottom_inner = '| '
  bottom = '+-'
  size = string.length

  size.times do |_|
    top << '-'
    top_inner << ' '
    bottom_inner << ' '
    bottom << '-'
  end

  p top + '-+'
  p top_inner + ' |'
  p middle + string + ' |'
  p bottom_inner + ' |'
  p bottom + '-+'
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

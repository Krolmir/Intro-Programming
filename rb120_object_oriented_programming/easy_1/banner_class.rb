# Behold this incomplete class for constructing boxed banners.

# Problem: Complete the banner class to properly display the banners below
# input: String
# output: A banner with the string inserted in the middle
# Steps:
# - message.size
# - set up horizontal_rule
#   - "+-" + '-'*@size + '-+'

# Steps to center banner if size is custom
# - message.size / 2
# - @size / 2 - message.size / 2 

class Banner
  def initialize(message, size = message.size)
    @size = size
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private
  attr_accessor :size, :message
    
  def horizontal_rule
    '+-' + '-' * @size + '-+'
  end

  def empty_line
    '| ' + ' ' * @size + ' |'
  end

  def message_line
    if @size == @message.size
      "| " + @message + " |"
    else
      '| ' + ' ' * ((@size / 2) - (@message.size / 2)) + @message \
      + ' ' * ((@size / 2) - (@message.size / 2)) + ' |'
    end
  end
end

# Complete this class so that the test cases shown below work as intended. You
# are free to add any methods or instance variables you need. However, do not
# make the implementation details public.

# You may assume that the input will always fit in your terminal window.

# Test Cases

banner = Banner.new('To boldly go where no one has gone before.', 66)
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
banner = Banner.new('test', 20)
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+
module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end

class Noble
  attr_reader :title, :name
  include Walkable

  def initialize(name, title)
    @name = name
    @title = title
  end
  
  def walk
    "#{title} #{super}"
  end
  
  def gait
    "struts"
  end
end



byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"
# We must have access to both name and title because they are needed for other purposes that we aren't showing here.

byron.name
# => "Byron"
byron.title
# => "Lord"
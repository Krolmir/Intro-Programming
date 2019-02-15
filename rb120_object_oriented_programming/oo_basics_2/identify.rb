class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify


#Expected output (yours may contain a different object id):

#<Cat:0x007ffcea0661b8 @name="Sophie">
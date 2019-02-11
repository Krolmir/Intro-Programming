=begin

input: string in format 'xx:xx'
output: minutes or integer

steps:
1: define 2 methods that out put the string
2: change the string to int put the int
=end

def after_midnight(str)
  arr = str.split(':')
  total = arr[0].to_i * 60 + arr[1].to_i
  
  total = 0 if total == 1440
end

def before_midnight(str)
  total = after_midnight(str)
  
  if total >= 1 && total <= 1439  
    total = 1440 - total
  elsif total == 1440
    total = 0
  end
  
  total
end


p after_midnight('00:00') # == 0
p before_midnight('00:00') # == 0
p after_midnight('12:34') # == 754
p before_midnight('12:34') # == 686
p after_midnight('24:00') # == 0
p before_midnight('24:00') # == 0
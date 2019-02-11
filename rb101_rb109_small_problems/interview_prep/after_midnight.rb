=begin

input: integer minutes (-)
output: time string "xx:xx"

notes: midnight = 1440 minutes

steps:
1: handle plus minutes. 

=end

def time_of_day(time)
  min = time % 60
  
  hour = time.abs / 60
  hour = hour % 24
  hour = 23 - hour if time < 0
  
  "#{format("%.2d", hour)}:#{format("%.2d", min)}"
end



p time_of_day(0) # == "00:00"
p time_of_day(35) # == "00:35"
p time_of_day(1447)
p time_of_day(3000) # == "02:00"
p time_of_day(800) # == "13:20"
p time_of_day(-3) # == "23:57"
p time_of_day(-1437) # == "00:03"
p time_of_day(-4231) # == "01:29"

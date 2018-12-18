# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# split the strink into 2 numbers, use split with :
# multiply hours by 60 and add it to the minutes

def after_midnight(time)
  time = time.split(':').map(&:to_i)
  time = 0 if time[0] == 24 && time[1].zero?
  (time[0] * 60) + time[1]
end

def before_midnight(time)
  time = time.split(':').map(&:to_i)
  if time[0] == 24 && time[1].zero?
    time = 0
  elsif time[0] > 0 || time[1] > 0
    1440 - ((time[0] * 60) + time[1])
  else
    (time[0] * 60) + time[1]
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

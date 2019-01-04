# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to
# represent degrees, a single quote (') to represent minutes, and a double
# quote (") to represent seconds. A degree has 60 minutes, while a minute
# has 60 seconds.

# the minutes = after the decimal * 60 (i.e 76.73 = .73 * 60) if there is a 
# decimal after the minutes then chop off and * by 60 again for seconds (i.e
# 76.73 = .73 * 60 is 43.8 so .8 x 60 = 48) Full answer 76°43'48"
# minutes degrees(00.xx * 60) remove decimal
# seconds minutes(00.xx * 60)

# Formating
# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# def get_decimal(number)
#   temp = number.to_s.split('.')
#   result = "." + temp[1].to_s                                                                          
#   result.to_f
# end

# def dms(number)
#   degree = number.to_i
#   minutes = get_decimal(number) * 60
#   seconds = get_decimal(minutes) * 60
#   minutes = minutes.to_i
#   seconds = seconds.to_i
  
#   minutes = "0" + minutes.to_s if minutes.to_s.length == 1
#   seconds = "0" + seconds.to_s if seconds.to_s.length == 1
  
#   puts %(#{degree}°#{minutes}'#{seconds}")
# end

require 'pry'

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  binding.pry
end
  
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# Disregard Daylight Savings and Standard Time and other complications.

# You may not use ruby's Date and Time classes

# Explicit RULES
# - Negative numbers are subtracted from 24:00
# - Positive numbers are added from 0
# - Format = hh:mm or 0-24:0-60
# - Work with any Integer input

# Algorithm
# - Check if the number is negative, else we can assume its positive
#   - Turn number into an hour format ie:  800 = 13:20
#   - If negative subtract 24:00 - number formated ie (24:00 - 13:20 = 10:40)
#   - Else return the number in number format

DAY = { 0 => 'Sunday', 1 => 'Monday', 2 => 'Tuesday', 3 => 'Wednesday',
        4 => 'Thursday', 5 => ' Friday', 6 => 'Saturday' }

def negative_number_conversion(number)
  hours = number.abs / 60
  hours = hours % 24 if hours > 24
  hours = 24 - (hours + 1)

  days = 6 - ((number.abs / 60) / 24)
  days = days % 7 if days > 6

  minutes = 60 - (number.abs % 60)

  # hours = '0' + hours.to_s if hours < 10
  # minutes = '0' + minutes.to_s if minutes < 10
  p DAY[days] + ' ' + format('%02d:%02d', hours, minutes)
end

def positive_number_converstion(number)
  hours = number / 60
  hours = hours % 24 if hours > 24

  days = (number.abs / 60) / 24
  days = days % 7 if days > 6

  minutes = number % 60

  # hours = '0' + hours.to_s if hours < 10
  # minutes = '0' + minutes.to_s if minutes < 10
  p DAY[days] + ' ' + format('%02d:%02d', hours, minutes)
end

def time_of_day(number)
  if number < 0
    negative_number_conversion(number)
  else
    positive_number_converstion(number)
  end
end

p time_of_day(0) == '00:00'
p time_of_day(-3) == '23:57'
p time_of_day(35) == '00:35'
p time_of_day(-1437) == '00:03'
p time_of_day(3000) == '02:00'
p time_of_day(800) == '13:20'
p time_of_day(-4231) == '01:29'

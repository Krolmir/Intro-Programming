# Problem: Given a positive integer create a function that retusn the time in
#          english with format of seconds, minutes, hours, days, years
# Rules: The bigger time format will always come first, ie. hours before minutes
#        days, before hours, years befor days, etc
#        If the time is > 1 than the time format will be pluralized ie, if
#        we have 45 seconds then seconds will read 'seconds' and not second
#        If we have 1 hour then time will read 1 'hour'
#        1 minute = 60 seconds
#        1 hour = 60 minutes
#        1 day = 24 hours
#        1 year = 365 days
#        The output needs to be as follows. xx hours, xx minutes and xx seconds
#        Or xx hours and xx seconds if the answer is 1 hours 25 seconds
#        1 day, 23 hours, 2 minutes and 1 second

# Input: Positive integer
# Output: String
# Steps:
# Define a method that takes an integer as an argument
# initilize years, days, hours, minutes, seconds = 0
# Set up Conditions to check
# - if num < 60
#   - seconds = num
# - if num >= 60 then
#   - minutes = num / 60
#   - seconds = num % 60
# - if minutes >= 60 then
#   - hours = minutes / 60
#   - minutes = minutes % 60
# - if hours >= 24 then
#   - days = hours / 24
#   - hours = hours % 24
# - if years >= 365 then
#   - years = days / 365
#   - days = days % 365

# return years, days, hours, minutes, seconds

# Steps for formatting
# intiailize result arr
# - if years > 1
#   - result_arr << years + " years"
# - else if year == 1
#   - result_arr << "1 year"
# - if days > 1
#   - result_arr << days + " days"
# - else if year == 1
#   - result_arr << "1 day"
# - if hours > 1
#   - result_arr << hours + " hours"
# - else if hour == 1
#   - result_arr << "1 hour"

def format_duration(num)
  return 'now' if num == 0
  seconds = num % 60
  minutes = num / 60
  hours = minutes / 60
  days = hours / 24
  years = days / 365

  minutes = minutes % 60 if minutes >= 60
  hours = hours % 24 if hours >= 24
  days = days % 365 if days >= 365

  result_arr = []

  result_arr << "#{years} years" if years > 1
  result_arr << '1 year' if years == 1
  result_arr << "#{days} days" if days > 1
  result_arr << '1 day'  if days == 1
  result_arr << "#{hours} hours" if hours > 1
  result_arr << '1 hour' if hours == 1
  result_arr << "#{minutes} minutes" if minutes > 1
  result_arr << '1 minute' if minutes == 1
  result_arr << "#{seconds} seconds" if seconds > 1
  result_arr << '1 second' if seconds == 1

  if result_arr.size == 1
    result_arr.join
  elsif result_arr.size == 2
    result_arr.join(' and ')
  else
    result_arr.join(', ').reverse.sub(',', 'dna ').reverse
  end
end

# Examples
p format_duration(1) # , "1 second")
p format_duration(62) # , "1 minute and 2 seconds")
p format_duration(120) # , "2 minutes")
p format_duration(3600) # , "1 hour")
p format_duration(3662) # , "1 hour, 1 minute and 2 seconds")

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap
# year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
# leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to
# determine leap years both before and after 1752.

def julian_calendar?(year)
  year < 1752
end

def julian_leap_year?(year)
  if (year % 4).zero?
    true
  else
    false
  end
end

def leap_year?(year)
  if julian_calendar?(year)
    julian_leap_year?(year)
  elsif (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  else
    (year % 4).zero?
  end
end

p leap_year?(2_016) == true
p leap_year?(2_015) == false
p leap_year?(2_100) == false
p leap_year?(2_400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2_000) == true
p leap_year?(1_900) == false
p leap_year?(1_752) == true
p leap_year?(1_700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

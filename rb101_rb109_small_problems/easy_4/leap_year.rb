# In the modern era under the Gregorian Calendar, leap years occur in every
# year that is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method
# that takes any year greater than 0 as input, and returns true if the year
# is a leap year, or false if it is not a leap year.

# Explicit rules
# - leap year is every year that is
# - evenly divided by 4 but not 100 unless divided by 400
# - must be positive integer greater than 0

# if year is => 400 then check if year % 400.zero? elsif year % 100 == 100
#   elsif year % 4 == 0
# elsif year is >=100 && <=399 then check if year % 100 == 0 elsif year % 4 == 0
# else check if year % 4 == 0

def greater_than_400_leap_year?(year)
  if year % 400.zero?
    true
  elsif year % 100.zero?
    false
  elsif year % 4.zero?
    true
  else
    false
  end
end

def greater_than_100_leap_year?(year)
  if year % 100.zero?
    false
  elsif year % 4.zero?
    true
  else
    false
  end
end

def greater_than_0_leap_year?(year)
  if year % 4.zero?
    true
  else
    false
  end
end

def leap_year?(year)
  if (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  elsif (year % 4).zero?
    true
  else
    false
  end
end

#   if year >= 400
#     greater_than_400_leap_year?(year)
#   elsif year >= 100 && year <= 399
#     greater_than_100_leap_year?(year)
#   elsif year > 0 && year <= 99
#     greater_than_0_leap_year?(year)
#   end
# end

p leap_year?(2_016) == true
p leap_year?(2_015) == false
p leap_year?(2_100) == false
p leap_year?(2_400) == true
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2_000) == true
p leap_year?(1_900) == false
p leap_year?(1_752) == true
p leap_year?(1_700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# explicit rules
# - New centuries begin in years that end with 01. So, the years 1901-2000
#   comprise the 20th century.

# 1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 31th 14th 15th 16th
# 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th

# if it ends in a 1 its st unless its 11 then th

def century(year)
  total = (year.to_f / 100).ceil
  p total.to_s + end_century(total)
end

def end_century(num)
  if num.to_s.end_with?('1')
    if num.to_s.end_with?('11')
      'th'
    else
      'st'
    end
  elsif num.to_s.end_with?('2')
    if num.to_s.end_with?('12')
      'th'
    else
      'nd'
    end
  elsif num.to_s.end_with?('3')
    if num.to_s.end_with?('13')
      'th'
    else
      'rd'
    end
  else
    'th'
  end
end

p century(2_000) == '20th'
p century(2_001) == '21st'
p century(1_965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10_103) == '102nd'
p century(1_052) == '11th'
p century(11_27) == '12th'
p century(11_201) == '113th'

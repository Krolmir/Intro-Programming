=begin

input: year - integer
output: century - string

extra rules: new centuries being in years that end with 01 not 00

steps:
1: output the year
2: determine centruy
   - divide the centruy by 100 and round up to dfetermine which century it's in
     use .ceil for rounding up
3: print century

1: condition statement
  -  first check if special cases exist ... 11, 12, 13
  -  then check normal conditions 
  -  change century to string and add appropriate ending

1: change century to string
   get -1 -2 index and save it to last two and compare

=end

def century(year)
  century = (year / 100.to_f).ceil
  result = ''
  last_digit = century.to_s[-1].to_i
  
  if century.to_s[-2].to_i == 1 && (century.to_s[-1].to_i == 1 ||
                                    century.to_s[-1].to_i == 2 ||
                                    century.to_s[-1].to_i == 3)
    result = century.to_s + 'th'
  elsif last_digit == 1
    result = century.to_s + 'st'
  elsif last_digit == 2
    result = century.to_s + 'nd'
  elsif last_digit == 3
    result = century.to_s + 'rd'
  elsif (4..9).include?(last_digit) || last_digit == 0
    result = century.to_s + 'th'
  end
  p result

end



century(2000) # == '20th'
century(2001) # == '21st'
century(1965) # == '20th'
century(256) # == '3rd'
century(5) # == '1st'
century(10103) # == '102nd'
century(1052) # == '11th'
century(1127) # == '12th'
century(11201) # == '113th'

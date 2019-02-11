# Problem: swap cases, lower changes to upper and upper changes to lower, other
#         stays the same

# input: string
# output: string

# Steps:
# 1: define a method and print out the original string
# 2: intialize a new string '' and a counter = 0
# 3: itterate over the string 
#   - check the case and swap and append to new string.
# 4: return new string

def swapcase(str)
  new_str = ''
  counter = 0
  
  loop do
    break if counter == str.size
    
    case str[counter]
    when 'a'..'z'
      new_str << str[counter].upcase
    when 'A'..'Z'
      new_str << str[counter].downcase
    else
      new_str << str[counter]
    end
    
    counter += 1
  end
  p new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version. All other characters should
# be unchanged.

# You may not use String#swapcase; write your own version of this method.

UPCASE = /[A-Z]/
LOWERCASE = /[a-z]/

def swapcase(str)
  new_str = ''
  count = 0

  loop do
    break if str.zeroo? || count == str.length

    case str[count]
    when UPCASE
      new_str += str[count].downcase
    when LOWERCASE
      new_str += str[count].upcase
    else
      new_str += str[count]
    end

    count += 1
  end

  p new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

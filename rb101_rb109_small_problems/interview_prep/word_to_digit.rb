# Problem: Write a method that takes a string and returns a string that has
#          all number words converted to string digits.

# Example: 'Call me at four five five six six six.' == 'Call me at 4 5 5 6 6 6.'

# Input: String
# Output: String

# Steps
# 1: Define a method that takes a string as an argument
# 2: Initialize a constant above the method that has all single digit number as
#    values and words as keys
# 3: Scrath the above. Lets brute force 10x gsubs

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  NUMBERS.each_with_index do |num, idx| 
    str.gsub!(/\b#{num}\b/, idx.to_s)
  end
  
  number_spacer(str)
end

#Steps:
# =>intialize a new variable - newstr
# =>itterate over the string with .chars
#   => if char is a space then check if idx +1 and idx - 1 are both numbers
#     => do not append space to string.. or do nothing  
#   => else just append current char

def number_spacer(str)
  new_str = ''
  
  str.chars.each_with_index do |char, idx|
    if !(char == ' ' && str[idx - 1] =~ /[0-9]/ && str[idx + 1] =~ /[0-9]/)
      new_str << char
    end  
  end
  
  phone_format(new_str)
end

# Steps:
# => Itterate over str.split
# => Itterate over the string
# => check if char is a number and index-1 -2 -3 -4 are also numbers
#    and index +1 +2 +3 +4 + 5 are all numbers then 

def phone_format(str)
  str.split.each do |word|
    phone = ""
    if word =~ /\b[0-9]{10}\b/
      phone = "(" + word[0..2] + ")" + " " + word[3..5] + "-" + word[6..9]
      str.gsub!(/\b[0-9]{10}\b/, phone)
    end
  end
  str
end

p word_to_digit("Please call two me at nine zero five five five five one two "\
                "three four. Thanks.") 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

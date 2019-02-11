=begin

input : string
output : is a boolean

steps : 
1: define a method that outputs a string
2: compare str to itself reversed.


=end

def palindrome?(str)
  str == reverse(str)
end

def reverse(str)
  new_str = ''
  count = str.size
  
  loop do 
    break if count == 0
    new_str << str[count - 1]
    count -= 1
  end
  p new_str
end

p palindrome?('madam') # == true
p palindrome?('Madam') # == false          # (case matters)
p palindrome?("madam i'm adam") # == false # (all characters matter)
p palindrome?('356653') # == true

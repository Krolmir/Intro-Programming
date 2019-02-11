=begin

input : string
output : boolean

steps:
1: define a method that returns a string
2: strip the string of all spaces/non-alphanumeric characters/downcase chars
    regex or gsub //

=end

def real_palindrome?(str)
  str.gsub!(/\W/, '')
  str.downcase!
  str == str.reverse  
end

p real_palindrome?('madam') # == true
p real_palindrome?('Madam') # == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # == true # (only alphanumerics matter)
p real_palindrome?('356653') # == true
p real_palindrome?('356a653') # == true
p real_palindrome?('123ab321') # == false

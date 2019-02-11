# Problem: Write a method thats going to take a string argument and return
#          the middle char or chars. If even 2 if odd 1.

# Input: String
# Output: string

# Steps:
# => Define a method that take a string as an arguement
# => Get the string size
# => if size is even we do size/2 && size/2 + 1 is our duo range
# => if size is odd then we do size/2 + 1 
# return the new string

def center_of(str)
  p str.size.odd? ? str[str.size / 2] : str[(str.size / 2) - 1..(str.size / 2)]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
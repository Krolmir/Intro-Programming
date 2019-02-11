# Problem: Write a method that returns a string with every character duplicated

# Input: String
# Output: String

# Steps:
# => Define a method that take a string as an argument
# => Initialize a new string variable
# => Itterate over the string with each (.chars)
#  => append each element twice to the new string
# => Return the enw string

def repeater(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char * 2
  end
  
  p new_str
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
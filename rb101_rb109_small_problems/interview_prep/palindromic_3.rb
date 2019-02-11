=begin

input : number
output : boolean

steps: 

1: define a method out put the num
2: split the num using .digits
3: Check if the original number is the same as the number reversed
     - if yea return true if noit return false

=end

def palindromic_number?(num)
  p num
  num.digits.join.to_s == num.to_s
end

p palindromic_number?(34543) # == true
p palindromic_number?(0123210) # == false
p palindromic_number?(22) # == true
p palindromic_number?(5) # == true
p palindromic_number?(05) # == true
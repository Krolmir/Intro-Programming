# Problem: take a string and return a new string with all letters alternating
#       being capitalized

# Input: String
# Output: String

# Steps: 
# 1: Define a method and output the original string
# 2: intialize a new string and counter
# 3: itterte over the string
#    - if counter == odd downcase, else counter = ever upcase
#    - append the values to new string
# 4: return new stirng

# def staggered_case(str)
#   new_str = ''
#   counter = 0
  
#   loop do
#     break if counter == str.size
    
#     if counter.odd?
#       new_str << str[counter].downcase
#     else
#       new_str << str[counter].upcase
#     end
    
#     counter += 1
#   end
#   p new_str
# end

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Ignore non-alphabetic chars

# Steps: 
# 1: Define a method p original string
# 2: Initialize new str '' and a counter = 0
# 3: Loop through the strin with a str.size condition as break
#     - set a flag that says Caps = true
#     - Have a condition at the begining that checks if the letter is a-z A-Z
#     - have a condition statement that says if caps = true word.upcase
#     - if condition is met we swap the flag !!
#     - Append to new string and go next
# 4: return new string

def staggered_case(str)
  new_str = ''
  counter = 0
  upcase = true
  
  loop do
    break if counter == str.size
    
    if str[counter] =~ /[a-zA-Z]/
      if upcase == true
        new_str << str[counter].upcase
        upcase = false
      else
        new_str << str[counter].downcase
        upcase = true
      end
    else
      new_str << str[counter]
    end
    
    counter += 1
  end
  
  p new_str
end



p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
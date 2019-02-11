# Problem: Create a method that returns a hash based on the amount of lowercase
#          uppercase and neither in a string

# input: string
# output: hash (3 key/value pairs)

# steps:
# 1: define a method
# 2: initialize a hash variable
# 3: create a loop with counter at string.size
#    - case statement checking if char[counter] ~= a-z A-Z not a alpha character
# 4: return hash

def letter_case_count(str)
  new_hash = { lowercase:0, uppercase:0, neither:0 }
  counter = 0
  
  loop do
    break if counter == str.size
    
    case str[counter]
    when 'a'..'z'
      new_hash[:lowercase] += 1    
    when 'A'..'Z'
      new_hash[:uppercase] += 1
    else
      new_hash[:neither] += 1
    end
    counter += 1  
  end
  
  p new_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
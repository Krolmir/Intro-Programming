# This is an example of how easy a solution can be, but sometimes you go down
# a road that is not even close to the best solution. I got stuck doing some
# absolutely crazy way, but eventually found a soultion online that was so
# simplistic.


# Problem: Write a method that determines if the given string has the proper
#          order in which braces appear. 
#          Braces are: [] {} ()
# Rules: [{}]
# Input: String of braces
# Output: Boolean
# Steps: 
# => define a method that takes a string as an argument
# => start off with 3 checks.
#   1 - '('.count == ')'.count
#   2 - '[' ''''''
#   3 - '{' ''''''
#   If any of the above conditions are false then return false
# => set 3 flag variables to track the counts
# => parenthesis_count = 0
# => count = 0
# => itterate through str.size.times
#   => if str[count] == '('
#     => parenthesis_count += 1
#   => elsif str[count] == ')'
#     => parenthesis_count -= 1
#   => count += 1
#   => return false if parenthesis_count == -1
# => If we succesfully get through the whole method to this point then we can 
#    return true


# def count(brace, count)
#   if brace == '('
#     count += 1
#   elsif brace == ')'
#     count -= 1
#   elsif brace == '['
#     count += 1
#   elsif brace == ']'
#     count -= 1
#   elsif brace == '{'
#     count += 1
#   elsif brace == '}'
#     count -= 1  
#   end
# end

# Steps:
# => Itterate through a loop do
#   => set a variable to = current string.to_a .gsub all pairs of braces
#   => if str.empty? True
#   => if var == arr then nothing was mutated and our return is false
#   => Else keep itterating

# def validBraces(str)
  # return false if str.count('(') != str.count(')') ||
  #                 str.count('[') != str.count(']') ||
  #                 str.count('{') != str.count('}')
  
  ######################
  # parenthesis_count = 0
  # square_count = 0
  # curly_count = 0
  # idx = 0
  
  # str.size.times do
  #   if str[idx] == '(' || str[idx] == ')'
  #     parenthesis_count = count(str[idx], parenthesis_count)
  #   elsif str[idx] == '[' || str[idx] == ']'
  #     square_count = count(str[idx], square_count)
  #   elsif str[idx] == '{' || str[idx] == '}'
  #     curly_count = count(str[idx], curly_count)
  #   end

  #   idx += 1
  #   return false if parenthesis_count == -1 ||
  #                   curly_count == -1 ||
  #                   square_count == -1
  # end
# end

def validBraces(str)
  return true if str.empty?
  return false if str.size.odd?
  
  loop do
    var = str.gsub('()', '').gsub('[]', '').gsub('{}', '')
    
    return false if str == var
    return true if var.empty?
    str = var
  end
end

# Examples: 
p validBraces("()")       # =>  True
p validBraces("[(])")     # =>  False
p validBraces("(){}[]")   # =>  True
p validBraces("([{}])")   # =>  True
p validBraces("(}")       # =>  False
p validBraces("[({})](]") # =>  False
# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(str)
  count = 0
  new_str = ''
  
  loop do
    break if str.length == 0 || count == str.length
    
    if count == 0 || str[count - 1] == ' '
      new_str += str[count].upcase
    else
      new_str += str[count].downcase
    end
    
    count += 1
  end
  
  p new_str
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

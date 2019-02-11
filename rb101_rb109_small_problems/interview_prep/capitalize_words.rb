# Problem: Take a string and capitalize everyword, (making first character 
#          upper case and the rest lowercase)

# Input: String
# Output: String

# Steps:
# 1: define a method and print out original string
# 2: split the string into an array of words
# : initialize a new arr
# 3: itterate over the array
#    - invoke .capitalize on each word and append it to new_arr
# 4: return arrjoined

def word_cap(str)
  str.split(' ').map { |word| word.capitalize }.join(' ')
end


p word_cap('four score and seven') # == 'Four Score And Seven'
p word_cap('the javaScript language') # == 'The Javascript Language'
p word_cap('this is a "quoted" word') # == 'This Is A "quoted" Word'
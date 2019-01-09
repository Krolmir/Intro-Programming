# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be
# arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and
# pay attention to case; that is, "AbcbA" is a palindrome, but neither
# "Abcba" nor "Abc-bA" are. In addition, assume that single characters
# are not palindromes.

def substrings_at_start(str)
  arr = []
  total = ''
  
  str.each_char { |char| arr << total += char }
  
  arr
end

def substrings(str)
  new_arr = []
  
  loop do
    break if str.length == 0
    
    new_arr << substrings_at_start(str)
    str.reverse!.chop!.reverse!
  end
  
  new_arr.flatten!
end

def palindromes(str)
  str.gsub!(/[^0-9a-z ]/i, ' ')
  arr = substrings(str)
  p arr.select { |substr| substr.casecmp(substr.reverse) == 0 && substr.length > 1 } 
end

p palindromes('abcd') == []
p palindromes('mAdam') == ['mAdam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
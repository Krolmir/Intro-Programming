# Problem: Write a program that reads a text file and prings the longest
#          sentence based on words. end of sentence (. ! ?) 
#          Also print the amount of words in that sentence

# Input: A text file
# Output: A string, with number value of how many words.

# Steps:
# => Output the file
# => split the string, based on those 3 conditions

# =>intialize a new longest setence variable
# => itterate over the array of sentences.
# => Split each sentence


str = ''

File.open("longest_sentence.txt").each do |line|
 str += line
end

puts str

str.gsub!("?", '.')
str.gsub!("!", '.')
# str.gsub!("\n", ' ')
arr = str.split('.')

longest_sentence = []

arr.each do |sentence|
  if sentence.split(' ').size > longest_sentence.size
    longest_sentence = sentence.split(' ')
  end
end

p longest_sentence.size
puts longest_sentence.join(' ')
# def snake(str)
#   p words = str.split
#   p current_word = 0

#   loop do
#     p words[current_word].downcase!

#     current_word += 1
#     break if current_word >= words.size
#   end

#   p words.join('_')
# end

# def camel(str)
#   words = str.split(' ')
#   counter = 0

#   while counter < words.size
#     words[counter] = words[counter].capitalize

#     counter = counter + 1
#   end

#   words.join
# end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word-1].upcase!
  end

  words.join('_')
end

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end

sentence = 'The sky was blue'
p upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'
# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(str)
  new_str = ''
  # count = 0

  # loop do
  #   break if count == str.size
  #   new_str += str[count] + str[count]
  #   count += 1
  # end

  str.each_char do |char|
    new_str += char + char
  end

  p new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

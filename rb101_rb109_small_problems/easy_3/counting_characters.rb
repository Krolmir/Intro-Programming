# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

# Notes
# get rid of the spaces in the string
# count the string

def prompt(message)
  p "=> #{message}"
end

prompt 'Please write a word or multiple words:'
input_string = gets.chomp

prompt "There are #{input_string.gsub(/\s+/, '').size} chracters "\
       "in '#{input_string}'."

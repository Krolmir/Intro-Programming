# Problem: Define a method that takes either an array of strings, with values
#          of either NORTH SOUTH EAST WEST.  Our goal is for the method to
#          return the shortest possible path based on the order of the array.
#          Using some sort of itterating sorting method we need to eliminate
#          any uneccessary combinations. Ie. North South one after the other
#          or East West. 
# Rules: NORTH can't be follow by SOUTH and vice versa
#        East can't be followed by West and vice versa
# input: array of strings
# output: array of string or strings or empty
# Conditions:
# COMBINATIONS = ["EAST", "WEST"], ["WEST", "EAST"], 
#                ["NORTH", "SOUTH"], ["SOUTH", "NORTH"]
# Steps:
# => define a method that takes an array as an argument
# => loop over the array 
#   => temp = arr 
#   
#   => (arr.size - 1).times do |idx|
#     => if COMBINATIONS.include?([arr[idx], arr[idx+1]])
#       => arr[idx] = ''
#       => arr[idx + 1] = ''
#     
#   => break if arr == temp
# => arr + some formating to get rid of spaces and stuff
require 'pry'

COMBINATIONS = [ ['EAST', 'WEST'], ['WEST', 'EAST'], ['NORTH', 'SOUTH'],
                 ['SOUTH', 'NORTH'] ]

def dirReduc(arr)

  loop do
    temp = arr.clone
    
    (arr.size - 1).times do |idx|
      if COMBINATIONS.include?([arr[idx], arr[idx + 1]])
        arr[idx] = ''
        arr[idx + 1] = ''
      end
    end
    
    arr.delete('')
    break if arr == temp
  end
  arr
end

# Examples:  

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a) # =>["WEST"]
u = ["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(u) # =>["NORTH", "WEST", "SOUTH", "EAST"])
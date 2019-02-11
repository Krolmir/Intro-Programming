=begin

input: array of integers(0..19)
output: array of integers sorted based on english name

steps:
1: define a method and output the original array
2: create a new array or mutate the original array to the word value of each
   number
3: sort the new array
4: convert back to number and return new array

=end

# def alphabetic_number_sort(arr)
#   hash = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
#           5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
#           10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
#           14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
#           17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

#   new_arr = arr.map { |element| hash[element] }
#   new_arr.sort!
#   new_arr.map { |element| hash.key(element) }
# end

def alphabetic_number_sort(arr)
  number_arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
                'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen',
                'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen',
                'nineteen']
  arr.sort_by { |idx| number_arr[idx] }
  
  
end

p alphabetic_number_sort((0..19).to_a) # == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

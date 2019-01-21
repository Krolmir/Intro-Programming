# Merge_sorted

require 'pry'

def merge(array1, array2)
  index_1 = 0
  index_2 = 0
  new_arr = []
  
  loop do
    case array1[index_1] <=> array2[index_2]
    when -1
      new_arr << array1[index_1]
      index_1 += 1
    when 0
      new_arr << array1[index_1]
      index_1 += 1
    when 1
      new_arr << array2[index_2]
      index_2 += 1
    when nil
      if index_1 == array1.length
        new_arr << array2[index_2]
        index_2 += 1
      else
        new_arr << array1[index_1]
        index_1 += 1
      end  
    end
    # binding.pry
    break if index_2 == array2.length && index_1 == array1.length
  end
  p new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

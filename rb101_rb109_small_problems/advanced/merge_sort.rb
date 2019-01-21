# Merge_sort

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

def merge_sort(arr)
  return arr if arr.size == 1
  p arr
  half = arr.length / 2 
  l_arr = arr[0..half - 1]
  r_arr = arr[half..arr.length - 1]

  temp_1 = merge_sort(l_arr)
  temp_2 = merge_sort(r_arr)
  p merge(temp_1, temp_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
%w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
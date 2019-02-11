# Problem: Write a method that provides a bubble sort. Comparing 2 elements at
#          a time and swapping as necessary.  All done when no swaps through
#          an itteration

# Input: Array
# Output: Same array sorted. (destructive method!)

# Steps:
# => write a method that takes an array as an argument
# => swap first 2 elements
#   => if <=> returns 1 then swap
#     => arr[0], arr[1] = arr[1], arr[0]

# => itterate through the array arr.size - 1.times |counter|
#  => if arr[counter] <=> arr[counter + 1] == 1 
#     => arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]


def bubble_sort!(arr)
  loop do
    swap_check = false
    (arr.size - 1).times do |idx|
      swap = arr[idx] <=> arr[idx + 1]
      if swap == 1  
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        swap_check = true
      end
    end
    break if swap_check == false
  end
  p arr
end


p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
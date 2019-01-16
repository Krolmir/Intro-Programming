# Write a method that takes an Array as an argument, and sorts that Array
# using the bubble sort algorithm as just described. Note that your sort will
# be "in-place"; that is, you will mutate the Array passed as an argument. You
# may assume that the Array contains at least 2 elements.

def bubble_sort!(arr)

  loop do
    modified = false
    count = 0

    loop do
      if arr[count] > arr[count + 1]
        arr[count], arr[count + 1] = arr[count + 1], arr[count]
        modified = true
      end

      count += 1
      break if count == arr.length - 1
    end
    p arr
    break if modified == false 
  end
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
# Transpose MxN

def transpose(arr)
  new_arr = []

  (0...arr[0].length).each do |col_index|
    row = (0...arr.length).map { |row_index| arr[row_index][col_index] }
    new_arr << row
  end

  p new_arr
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

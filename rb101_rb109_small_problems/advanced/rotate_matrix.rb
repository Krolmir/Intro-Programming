# Rotating Matrix

def rotate90(arr, degrees = 90)
  new_arr = []

  loop do
    new_arr = []
    (0...arr[0].length).each do |c_index|
      row = (arr.length - 1).downto(0).map { |count| arr[count][c_index] }
      new_arr << row
    end

    p new_arr

    break if degrees == 90
    degrees -= 90
    arr = new_arr
  end
  new_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# 3 4 1
# 9 7 5
# 6 2 8

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

# 5 3
# 1 7
# 0 4
# 8 2

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(matrix2, 360)

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

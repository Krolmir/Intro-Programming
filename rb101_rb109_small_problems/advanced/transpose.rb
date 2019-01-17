# Transpose

def transpose(arr)
  new_arr = [[arr[0][0],arr[1][0], arr[2][0]], [arr[0][1],arr[1][1], arr[2][1]],
             [arr[0][2],arr[1][2], arr[2][2]]]
  p new_arr
end

def transpose!(arr)
  new_arr = arr
  arr = [ [new_arr[0][0], new_arr[1][0], new_arr[2][0]], 
          [new_arr[0][1], new_arr[1][1], new_arr[2][1]],
          [new_arr[0][2], new_arr[1][2], new_arr[2][2]] ]
end 

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose!(matrix)
